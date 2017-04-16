#!/usr/bin/env sh

set -x

cat <<EOF > Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.box = "stereohorse/alfa-infra-sandbox"

  config.vm.network "private_network", type: "dhcp"

  config.vm.hostname = "pikavm"
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "play-site.yml"
  end
end
EOF
