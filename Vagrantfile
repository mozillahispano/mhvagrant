# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

    Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    #|
    #| :::::: Box Name
    #|
    config.vm.box = "ubuntu/trusty64"

    #|
    #| :::::: Check for updates
    #|
    config.vm.box_check_update = false

    #|
    #| :::::: Ports LOCAL-VAGRANT
    #|
    config.vm.network "forwarded_port", guest: 80, host: 60080

    #|
    #| :::::: ip
    #|
    config.vm.network :private_network, ip: "192.168.88.88"

    #|
    #| :::::: Create a public network, which generally matched to bridged network.
    #|
    # config.vm.network "public_network"

    #|
    #| :::::: SSH connections (false)
    #|
    # config.ssh.forward_agent = true

    #|
    #| :::::: Folders
    #|
    config.vm.synced_folder "www", "/home/vagrant/www"
    config.vm.synced_folder "www", "/var/www/html"
    config.vm.synced_folder "share", "/home/vagrant/share"
    config.vm.synced_folder "puppet", "/home/vagrant/puppet"

    #|
    #| :::::: VM Config
    #|
    config.vm.provider "virtualbox" do |vb|
        # v.gui = true
        # v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        vb.customize ["modifyvm", :id, "--memory", "2048"]
        vb.customize ["modifyvm", :id, "--cpus", "2"]
        vb.customize ["modifyvm", :id, "--name", "VM-BASE-Apache"]
    end

    #|
    #| :::::: Bash provision
    #|
    # config.vm.provision :shell, :path => "my_script.sh"

    #|
    #| :::::: Puppet Config
    #|
    config.vm.provision :puppet do |puppet|
        puppet.module_path    = "puppet/modules"
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file  = "init.pp"

        # puppet.options        ="--verbose --debug"
    end

end
