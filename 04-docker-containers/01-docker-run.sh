#!/usr/bin/env sh

set -x

docker run -d --name pika -p 8080:8080 pikachu-server
