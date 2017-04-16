#!/usr/bin/env sh

set -x

cat <<EOF > Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.box = "stereohorse/alfa-infra-sandbox"

  config.vm.network "private_network", type: "dhcp"
end
EOF
