#!/usr/bin/env bash

set -x

docker pull nginx:1.10.3-alpine
docker pull python:3.6.1-alpine

vagrant box add ubuntu/xenial64 --box-version 20170414.2.0
