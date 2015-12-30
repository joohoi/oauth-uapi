# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$ubuntu_setup_script = <<SETUP_SCRIPT
apt-get update
apt-get -y install vim python3 python3-pip python-virtualenv postgresql postgresql-contrib libpq-dev
cd /vagrant
./bootstrap/venv.sh
./bootstrap/pgsql.sh
SETUP_SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "oauth-ubuntu-trusty", primary: true do |oauth_ubuntu_trusty|
    oauth_ubuntu_trusty.vm.box = "ubuntu/trusty64"
    oauth_ubuntu_trusty.vm.provision "shell", inline: $ubuntu_setup_script
    oauth_ubuntu_trusty.vm.provider "virtualbox" do |v|
      v.memory = 2048
    end
  end

end
