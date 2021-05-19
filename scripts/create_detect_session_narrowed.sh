#!/bin/bash

python3 /opt/workdir/Munin/main.py -c /opt/workdir/munin_config.toml -l /mnt/work/munin_create_detect_session.log -v gen_session -L -n /mnt/work/arduino_project /mnt/work/session_narrowed_latest
