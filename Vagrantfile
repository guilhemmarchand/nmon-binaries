# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant multi machine configuration

servers=[
      # This box is not affected by current trouble with Ubuntu 15 / 16
      {
        :hostname => "ubuntu-1704-64",
        :box => "xenji/ubuntu-17.04-server",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1610-64",
        :box => "boxcutter/ubuntu1610",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1604-64",
        :box => "boxcutter/ubuntu1604",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1404-64",
        :box => "boxcutter/ubuntu1404",
        :ram => 2048,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1204-64",
        :box => "boxcutter/ubuntu1204",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1610-32",
        :box => "boxcutter/ubuntu1610-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1604-32",
        :box => "boxcutter/ubuntu1604-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1704-32",
        :box => "wholebits/ubuntu17.04-32",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1404-32",
        :box => "boxcutter/ubuntu1404-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1204-32",
        :box => "boxcutter/ubuntu1204-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-73-64",
        :box => "boxcutter/ol73",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-72-64",
        :box => "boxcutter/ol72",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-68-64",
        :box => "boxcutter/ol68",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-67-64",
        :box => "boxcutter/ol67",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-67-32",
        :box => "boxcutter/ol67-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-73-64",
        :box => "boxcutter/centos73",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-72-64",
        :box => "boxcutter/centos72",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-68-64",
        :box => "boxcutter/centos68",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-68-32",
        :box => "boxcutter/centos68-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "debian-8-64",
        :box => "boxcutter/debian8",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "debian-7-64",
        :box => "boxcutter/debian7",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "debian-8-32",
        :box => "boxcutter/debian8-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "debian-7-32",
        :box => "boxcutter/debian7-i386",
        :ram => 512,
        :cpu => 1
      }
]

Vagrant.configure(2) do |config|

    # Get's honored normally
    config.vm.synced_folder ".", "/vagrant", disabled: true
    # But not the centos box
    config.vm.synced_folder '.', '/home/vagrant/sync', disabled: true

    config.vm.synced_folder "/opt/nmon-binaries", "/opt/nmon-binaries"

    servers.each do |machine|

        config.vm.define machine[:hostname] do |node|

            # Ubuntu
            node.vm.box = "ubuntu/trusty64"

            config.ssh.insert_key = false
            node.vm.usable_port_range = (2200..2250)
            node.vm.hostname = machine[:hostname]
            node.vm.network "private_network", type: "dhcp"
            node.vm.box = machine[:box]

            node.vm.provider "virtualbox" do |vb|
                vb.customize ["modifyvm", :id, "--memory", machine[:ram], "--cpus", machine[:cpu]]
                vb.name = machine[:hostname]
            end
        end

    end

  config.vm.provision "ansible" do |ansible|
    ansible.limit = "all"
    ansible.playbook = "main.yml"
    #ansible.inventory_path = "ansible_inventory"
    #ansible.host_key_checking = false
    #ansible.verbose = "v"
  end

end
