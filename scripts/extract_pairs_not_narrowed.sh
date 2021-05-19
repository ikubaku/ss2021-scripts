#!/bin/bash

python3 /opt/workdir/Munin/main.py -c /opt/workdir/munin_config.toml -l /mnt/work/munin_extract_pairs.log -v /mnt/work/result_not_narrowed_latest /mnt/work/arduino_project /mnt/work/pairs_not_narrowed_latest
