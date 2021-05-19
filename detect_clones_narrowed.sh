#!/bin/bash

docker run --rm -it -v $PWD/work:/mnt/work ss2021_scripts:latest /opt/workdir/scripts/create_detect_session_narrowed.sh
docker run --rm -it -v $PWD/work:/mnt/work ss2021_scripts:latest /opt/workdir/scripts/detect_clones_narrowed.sh
docker run --rm -it -v $PWD/work:/mnt/work ss2021_scripts:latest /opt/workdir/scripts/extract_pairs_narrowed.sh
