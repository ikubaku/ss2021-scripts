#!/bin/bash

docker run --rm -v $PWD/work:/mnt/work ss2021_scripts:latest /opt/workdir/scripts/restore_library_archives.sh
docker run --rm -v $PWD/work:/mnt/work ss2021_scripts:latest /opt/workdir/scripts/find_headers.sh
