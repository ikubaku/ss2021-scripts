#!/bin/bash

# Initialize submodules
git submodule update --init

# Build Hugin
pushd ./src/Hugin
cargo build --release
popd

# Copy the binary for the image creation
mkdir -p ./dist/build
cp ./src/Hugin/target/release/hugin ./dist/build/

# Download CCFinderSW
curl -o /tmp/CCFinderSW-1.0.zip "https://raw.githubusercontent.com/YuichiSemura/CCFinderSW/master/build/distributions/CCFinderSW-1.0.zip"

# Add grammar definitions
pushd ./dist
unzip /tmp/CCFinderSW-1.0.zip
mkdir -p ./CCFinderSW-1.0/grammarsv4/ino/
cp ./CCFinderSW-1.0/grammarsv4/cpp/CPP14.g4 ./CCFinderSW-1.0/grammarsv4/ino/
mkdir -p ./CCFinderSW-1.0/grammarsv4/pde/
cp ./CCFinderSW-1.0/grammarsv4/cpp/CPP14.g4 ./CCFinderSW-1.0/grammarsv4/pde/
popd

# Create the Docker image
docker build . -t ss2021_scripts:latest

# Prepare the working directory
mkdir -p ./work

# Download the target Arduino project
pushd ./work
git clone https://github.com/omzn/big_aquatan.git arduino_project
popd

# Extract the database for replication
pushd ./work
tar xf ./dist/database.tar.xz
popd
