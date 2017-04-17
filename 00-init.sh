#!/usr/bin/env bash

set -x

docker pull python:3.6.1-alpine

vagrant box add stereohorse/alfa-infra-sandbox
