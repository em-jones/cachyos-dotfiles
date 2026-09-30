#!/usr/bin/env python3
"""Shared vendor HID feature-report sender for the Zenbook Duo keyboard
backlight, over either the wired/docked USB connection or the Bluetooth
connection.

Docked, the keyboard enumerates as a real USB device (idProduct 0x1bf2)
and the report is sent via a USB control transfer. Over Bluetooth it
enumerates as a virtual uhid device (idProduct 0x1bf3) that never shows
up on the USB bus at all, so it's addressed instead via the matching
/dev/hidraw node using the HIDIOCSFEATURE ioctl (the hidraw equivalent
of a USB SET_REPORT/Feature control transfer).
"""

import fcntl
import glob
import os

import usb.core
import usb.util

VENDOR_ID = 0x0b05
USB_PRODUCT_ID = 0x1bf2   # docked, real USB device
BT_PRODUCT_ID = 0x1bf3    # paired over Bluetooth, virtual uhid device
REPORT_ID = 0x5A
WVALUE = 0x035A
WINDEX = 4
WLENGTH = 16

# HIDIOCSFEATURE(len) = _IOC(_IOC_WRITE|_IOC_READ, 'H', 0x06, len)
_IOC_WRITE_READ = 3
def _hidiocsfeature(length):
    return (_IOC_WRITE_READ << 30) | (length << 16) | (ord('H') << 8) | 0x06


def build_report(level):
    data = [0] * WLENGTH
    data[0] = REPORT_ID
    data[1] = 0xBA
    data[2] = 0xC5
    data[3] = 0xC4
    data[4] = level
    return data


def _send_via_usb(data):
    dev = usb.core.find(idVendor=VENDOR_ID, idProduct=USB_PRODUCT_ID)
    if dev is None:
        return False

    if dev.is_kernel_driver_active(WINDEX):
        try:
            dev.detach_kernel_driver(WINDEX)
        except usb.core.USBError as e:
            print(f"Could not detach kernel driver: {e}")
            return False

    try:
        bmRequestType = 0x21  # Host to Device | Class | Interface
        bRequest = 0x09       # SET_REPORT
        ret = dev.ctrl_transfer(bmRequestType, bRequest, WVALUE, WINDEX, data, timeout=1000)
        if ret != WLENGTH:
            print(f"Warning: only {ret} bytes sent out of {WLENGTH} (USB).")
        else:
            print("Data packet sent successfully (USB).")
    except usb.core.USBError as e:
        print(f"USB control transfer failed: {e}")
        return False
    finally:
        usb.util.release_interface(dev, WINDEX)
        try:
            dev.attach_kernel_driver(WINDEX)
        except usb.core.USBError:
            pass
    return True


def _find_bt_hidraw():
    """Return the /dev/hidrawN path for the keyboard's Bluetooth HID
    interface, or None if the keyboard isn't currently paired/connected.

    The Bluetooth pairing exposes two uhid interfaces sharing the same
    HID_ID (one for the keyboard, one for the touchpad/multitouch) — the
    keyboard one is the interface carrying the capslock/numlock/etc LED
    nodes, so use that to disambiguate.
    """
    target = f"0005:{VENDOR_ID:08X}:{BT_PRODUCT_ID:08X}"
    for uevent_path in glob.glob("/sys/class/hidraw/*/device/uevent"):
        try:
            with open(uevent_path) as f:
                content = f.read()
        except OSError:
            continue
        if f"HID_ID={target}" not in content:
            continue
        sysfs_dev = os.path.dirname(uevent_path)
        if glob.glob(f"{sysfs_dev}/input/input*/*::capslock"):
            hidraw_name = uevent_path.split("/sys/class/hidraw/")[1].split("/")[0]
            return f"/dev/{hidraw_name}"
    return None


def _send_via_bt(data):
    path = _find_bt_hidraw()
    if path is None:
        return False

    buf = bytearray(data)
    try:
        fd = os.open(path, os.O_RDWR)
    except OSError as e:
        print(f"Could not open {path}: {e}")
        return False

    try:
        fcntl.ioctl(fd, _hidiocsfeature(len(buf)), buf, True)
        print(f"Data packet sent successfully (Bluetooth: {path}).")
    except OSError as e:
        print(f"hidraw feature report failed on {path}: {e}")
        return False
    finally:
        os.close(fd)
    return True


def send_report(level):
    """Send the keyboard-backlight-level vendor feature report over
    whichever transport the keyboard is currently connected through.
    Returns True on success."""
    data = build_report(level)
    if _send_via_usb(data):
        return True
    if _send_via_bt(data):
        return True
    print(f"Device not found (checked USB dock {VENDOR_ID:04x}:{USB_PRODUCT_ID:04x} "
          f"and Bluetooth {VENDOR_ID:04x}:{BT_PRODUCT_ID:04x}).")
    return False
