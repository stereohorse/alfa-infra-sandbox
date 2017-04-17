#!/usr/bin/env sh

set -x

cat <<EOF > play-site.yml
- hosts: all
  become: yes
  tasks:
    - name: start pikachu server
      docker_container:
        name: pika
        image: 0x06065a/pikachu-server
        ports:
          - "8080:8080"
EOF
