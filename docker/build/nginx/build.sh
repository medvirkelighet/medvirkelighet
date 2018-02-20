#!/bin/bash

# create crypto
if test -f dhparams.pem; then
  echo 'Using pre-existing Strong Diffie-Hellmann Group'
else
  echo 'Creating Strong Diffie-Hellmann Group'
  openssl dhparam -out dhparams.pem 2048 || exit 1
fi

# copy to config folder
cp dhparams.pem /home/ubuntu/medvirkelighet/config/

# build
echo 'Building image'
docker build -t medvirkelighet/nginx:latest . || exit 1