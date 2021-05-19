#!/bin/bash

docker run --rm ss2021_scripts:latest -v $PWD/work:/mnt/work /opt/workdir/scripts/create_detect_session_not_narrowed.sh
docker run --rm ss2021_scripts:latest -v $PWD/work:/mnt/work /opt/workdir/scripts/detect_clones_not_narrowed.sh
docker run --rm ss2021_scripts:latest -v $PWD/work:/mnt/work /opt/workdir/scripts/extract_pairs_not_narrowed.sh
