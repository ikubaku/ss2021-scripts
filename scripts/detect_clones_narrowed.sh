#!/bin/bash

cd /opt/workdir/Hugin
cargo run --release -- -c /opt/workdir/hugin_config.toml /mnt/work/session_narrowed_latest /mnt/work/result_narrowed_latest
