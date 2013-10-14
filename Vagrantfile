# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Start with this box
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Give it lots of RAM
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm",:id, "--memory","2048"]
  end

  # Allow access to web server & postgres from host
  config.vm.network :forwarded_port, guest: 3000,host: 3000

  config.vm.provision :shell, :inline => "sudo /usr/bin/apt-get update"

  # Use puppet to configure
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "puppet/modules"
  end
end
