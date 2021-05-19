FROM ubuntu:20.04
MAINTAINER ikubaku <hide4d51@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /opt/workdir

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python3 python3-toml python3-requests python3-progress python3-chardet python3-semver openjdk-11-jre-headless tar cargo

COPY ./src/Munin ./Munin
COPY ./src/Hugin ./Hugin
COPY ./dist/munin_config.toml .
COPY ./dist/build/hugin .
COPY ./dist/hugin_config.toml .
COPY ./dist/CCFinderSW-1.0 ./CCFinderSW-1.0
COPY ./scripts ./scripts

ENTRYPOINT ["/bin/bash"]
