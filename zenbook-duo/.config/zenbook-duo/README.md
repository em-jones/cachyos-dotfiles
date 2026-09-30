# zenbook-duo-2024-ux8406ma-linux

Adapted to run under **sway** (originally written against GNOME/mutter). Display
and input-mapping commands use `swaymsg` + `jq` against `swaymsg -t get_outputs`
instead of `gnome-monitor-config`/dconf.

Features:
* brightness sync (any)
* battery limiter (any)
* touch/pen panels mapping (sway, via `input <id> map_to_output`)
* automatic bottom screen on/off (sway, via `swaymsg output`)
* automatic rotation (sway, via `swaymsg output ... transform`)

`~/.config/sway/config` binds `$mod+Shift+d` to `duo toggle`.

## panel mapping

`duo set-tablet-mapping` maps the top/bottom stylus devices to `eDP-1`/`eDP-2`
via `swaymsg input "<identifier>" map_to_output <output>`. The stylus/touch
`identifier` strings are hardcoded near the top of `duo` — if you're on
different hardware, find yours with `swaymsg -t get_inputs | jq -r '.[].identifier'`
and update `tablet_top`, `tablet_bottom`, `touch_bottom`.

## bottom screen toggle on sway

Make sure `jq`, `usbutils` and `inotify-tools` are installed — the script relies
on `swaymsg`, `jq`, `lsusb` and `inotifywait`.

Before the next steps, you may need or want to change the scaling settings or
change the config at the top of `duo` based on the version of the duo that you
have (1080p vs 3k display models). Resolution strings must match a mode sway
reports, e.g. `swaymsg -t get_outputs | jq -r '.[].modes'`.

For automatic screen management run `duo watch-displays` somewhere at the start
of your sway session (e.g. an `exec` line in `~/.config/sway/config`).

For manual screen management there are `duo top`, `duo bottom`, `duo both` and
`duo toggle` (toggles between top and both) commands.

In addition there's also `duo toggle-bottom-touch` to toggle touch for the
bottom screen, so you can draw with a pen while resting your hand on the
screen.

## automatic rotation

Make sure iio-sensor-proxy is installed, the script relies on `monitor-sensor`
command from it. Once it's installed and you followed the steps above for
dualscreen setup just run `duo watch-rotation` somewhere at the start of your
sway session.

`left-up`/`right-up` use sway's numeric `transform` values (`90`/`270`), which
follow the same wl_output enum GNOME/mutter uses internally — but this hasn't
been verified against the accelerometer's actual orientation reports on this
hardware. If the display ends up upside-down relative to the physical rotation,
swap the `90`/`270` values in the `left-up`/`right-up` cases of `duo`.

## brightness sync

Brightness control requires root permissions. I prefer to have sudo with a password by default, so I use a hack to have a NOPASSWD sudo for /usr/bin/env which allows to execute any command. Line in /etc/sudoers looks like `%wheel  ALL=(ALL:ALL)    NOPASSWD: /usr/bin/env`. On NixOS the relevant part of the config is this:

```
  security.sudo = {
    enable = true;
    extraRules = [{
      commands = [
        {
          command = "/usr/bin/env";
          options = [ "NOPASSWD" ];
        }
      ];
      groups = [ "wheel" ];
    }];
  };
```

Once the sudo setup is done you can either run `duo sync-backlight` to sync it once (you may want to bind it to some hotkey) or you can run `duo watch-backlight` at login and it will keep syncing your brightness from the top display to the bottom one.

For most linux distros there is an included systemd service file: `brightness-sync.service` that just needs `/path/to/duo` changed before moving it to `/etc/systemd/system` to enable brightness sync in the background.

## battery limiter

Requires same sudo setup as for the brightness sync. Most likely you want to run `duo bat-limit` or `duo bat-limit 75` (where 75 is your desired threshold percentage, 80 is used if omited) once at the start of your desktop session.

## keyboard backlight control

Requires python3 and pyusb installed. `duo set-kb-backlight <0|1|2|3>` configures keyboard backlight, with 0 meaning off and 3 meaning max brightness.

## Notes concerning usage on Fedora 40

The steps described above work on Fedora 40 with the following specific changes:
Prerequisities:
`sudo dnf install lm_sensors gnome-monitor-config inotofy-tools`
Libwacom files elan-425a.tablet and elan-425b.tablet should be copied to /usr/share/libwacom
For brightness sync to work properly, line 10 of the duo.sh should be modified to `backlight=card1-eDP-2-backlight`

