#!/bin/bash

python3 /opt/workdir/Munin/main.py -c /opt/workdir/munin_config.toml -l /mnt/work/munin_create_detect_session.log -v -L /mnt/work/arduino_project /mnt/work/session_not_narrowed_latest
