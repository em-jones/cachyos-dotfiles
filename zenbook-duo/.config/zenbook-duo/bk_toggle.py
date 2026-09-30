#!/usr/bin/env python3

import sys

from hid_report import send_report

LEVEL_FILE = "tmp/bk_level"


def write_level_to_file(level):
    try:
        with open(LEVEL_FILE, "w") as f:
            f.write(str(level))
    except IOError as e:
        print(f"Could not write to {LEVEL_FILE}: {e}")
        sys.exit(1)


def get_level_from_file():
    try:
        with open(LEVEL_FILE, "r") as f:
            level = int(f.read().strip())
            if level < 0 or level > 3:
                raise ValueError
            return level
    except (IOError, ValueError) as e:
        print(f"Could not read from {LEVEL_FILE} or invalid value: {e}")
        sys.exit(1)


level = (get_level_from_file() + 1) % 4

if not send_report(level):
    sys.exit(1)

write_level_to_file(level)
sys.exit(0)
