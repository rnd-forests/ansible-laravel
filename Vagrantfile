# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", id: "vagrant"
  config.vm.synced_folder "./apps", "/home/vagrant/apps", owner: "www-data", group: "www-data", id: "apps"
  config.vm.provider :virtualbox do |v|
    v.memory = 512
    v.linked_clone = true
  end

  config.vm.define "app" do |app|
    app.vm.hostname = "app.test"
    app.vm.network :private_network, ip: "192.168.60.4"
  end
end
