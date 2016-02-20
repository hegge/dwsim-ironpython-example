# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian/jessie64"

  # config.vm.provision :shell, :inline => "sed -i 's/main$/main non-free contrib/g' /etc/apt/sources.list"
  
  config.vm.provision :ansible do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml"
  end

  $download = <<-SCRIPT
  cd /vagrant/src
  ./download.sh
  SCRIPT
  config.vm.provision :shell, inline: $download, privileged: false

  config.vm.provision :shell, :inline => "ln -s /lib/x86_64-linux-gnu/libdl.so.2 /lib/x86_64-linux-gnu/libdl.so"

  $run = <<-SCRIPT
  cd /vagrant/src
  ./run.sh
  SCRIPT
  config.vm.provision :shell, inline: $run, privileged: false, run: "always"

end
