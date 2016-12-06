
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
    config.vm.synced_folder ".", "/vagrant", mount_options: ["dmode=700,fmode=600"]
  else
    config.vm.synced_folder ".", "/vagrant"
  end
  config.vm.box ="ubuntu/trusty64"
  config.vm.provider :virtualbox do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
  
  config.vm.define "cd" do |d| 
    d.vm.hostname = "cd"
    d.vm.network :private_network, ip: '10.0.0.20'
    d.vm.network :forwarded_port, guest: 5432, host: 5432
    d.vm.network :forwarded_port, guest: 6432, host: 6432
    d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
    d.vm.provision :shell, inline: "PYTHONUNBUFFERED=1 ansible-playbook /vagrant/ansible/site.yml -c local"
  end 
end
