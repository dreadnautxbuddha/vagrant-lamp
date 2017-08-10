# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.define "apache" do |apache|

        apache.vm.box = "ApacheBox"

        apache.vm.box_url = "E:/Web/CentOS/Box/apache.box"

        apache.vm.hostname = "vagrant-apache.local"

        apache.vm.network "forwarded_port", guest: 80, host: 1225

        apache.vm.synced_folder "E:/Web/CentOS/centos68/html", "/var/www/html", owner: "root", group: "apache"

        apache.vm.provider "virtualbox" do |vb|
            #vb.gui = true
            vb.memory = "1024"
        end

        apache.vm.provision "shell", :path => "provision.sh"

        # Create a private network, which allows host-only access to the machine
        # using a specific IP.
        apache.vm.network "private_network", ip: "55.55.55.5"
        apache.vm.network "public_network", ip: "192.168.128.253"
    end

end
