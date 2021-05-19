#!/bin/bash

cd /opt/workdir/Hugin
cargo run --release -- -c /opt/workdir/hugin_config.toml /mnt/work/session_not_narrowed_latest /mnt/work/result_not_narrowed_latest
