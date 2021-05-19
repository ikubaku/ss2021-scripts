#!/bin/bash

docker run --rm ss2021_scripts:latest -v $PWD/work:/mnt/work /opt/workdir/scripts/restore_library_archives.sh
docker run --rm ss2021_scripts:latest -v $PWD/work:/mnt/work /opt/workdir/scripts/find_headers.sh
