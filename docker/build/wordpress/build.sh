#!/bin/bash

# ensure latest wordpress
docker pull wordpress:latest

# build
docker build -t medvirkelighet/wordpress:latest .