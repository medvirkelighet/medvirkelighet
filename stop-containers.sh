#!/bin/bash

# stop, remove old
docker rm -f docker_nginx_1
docker rm -f docker_wordpress_1
docker rm -f docker_app_1
docker rm -f docker_mysql_1
docker rm -f docker_redis_1
