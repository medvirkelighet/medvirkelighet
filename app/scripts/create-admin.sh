#!/bin/bash
CONTAINER=$(docker ps -f name=app -q)
docker exec $CONTAINER node scripts/js/create-admin.js $@