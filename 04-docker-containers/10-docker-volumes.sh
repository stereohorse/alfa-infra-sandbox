#!/usr/bin/env sh

set -x

mkdir -p /tmp/host-mount

docker run -v /tmp/host-mount:/var/mount -d --name pika -p 8080:8080 pikachu-server
