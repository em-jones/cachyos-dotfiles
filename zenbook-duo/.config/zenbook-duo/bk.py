#!/usr/bin/env python3

import sys

from hid_report import send_report

if len(sys.argv) != 2:
    print(f"Usage: {sys.argv[0]} <level>")
    sys.exit(1)

try:
    level = int(sys.argv[1])
    if level < 0 or level > 3:
        raise ValueError
except ValueError:
    print("Invalid level. Must be an integer between 0 and 3.")
    sys.exit(1)

sys.exit(0 if send_report(level) else 1)
