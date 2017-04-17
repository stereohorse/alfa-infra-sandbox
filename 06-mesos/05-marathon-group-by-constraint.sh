#!/usr/bin/env sh

set -x

cat << EOF > pikachu-server-manifest.json
[
  {
    "id": "pikachu-server",

    "cpus": 0.1,
    "mem": 128,
    "instances": 4,

    "container": {
      "type": "DOCKER",
      "docker": {
        "image": "0x06065a/pikachu-server",
        "network": "BRIDGE",
        "portMappings": [{
            "containerPort": 8080
        }]
      }
    },

    "constraints": [["hostname", "GROUP_BY"]],

    "healthChecks": [
      {
        "gracePeriodSeconds": 300,
        "intervalSeconds": 5,
        "maxConsecutiveFailures": 3,
        "path": "/",
        "portIndex": 0,
        "protocol": "HTTP",
        "timeoutSeconds": 10
      }
    ],

    "upgradeStrategy": {
      "maximumOverCapacity": 0.5,
      "minimumHealthCapacity": 1.0
    }
  }
]
EOF
