#!/bin/bash

build () {
    cd $1
    echo "Building $1..."
    sh build.sh
    cd ..
    echo "Done!"
}

# build images
build nginx
build app
build wordpress
build redis