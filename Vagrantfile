# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant multi machine configuration

servers=[
      # This box is not affected by current trouble with Ubuntu 15 / 16
      {
        :hostname => "ubuntu-1604-64",
        :box => "easyscp/xenial",
        :ram => 512,
        :cpu => 1
      },
      # This image does not currently works with private network,see:
      # https://github.com/mitchellh/vagrant/issues/6871
      #{
      #  :hostname => "ubuntu-1510-64",
      #  :box => "boxcutter/ubuntu1510",
      #  :ram => 512,
      #  :cpu => 1
      #},
      {
        :hostname => "ubuntu-1510-64",
        :box => "sgallen/wily64",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1404-64",
        :box => "boxcutter/ubuntu1404",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "ubuntu-1204-64",
        :box => "boxcutter/ubuntu1204",
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
        :hostname => "oraclelinux-72-64",
        :box => "boxcutter/ol72",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-71-64",
        :box => "boxcutter/ol71",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-70-64",
        :box => "boxcutter/ol70",
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
        :hostname => "oraclelinux-66-64",
        :box => "boxcutter/ol66",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-65-64",
        :box => "boxcutter/ol65",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-64-64",
        :box => "boxcutter/ol64",
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
        :hostname => "oraclelinux-66-32",
        :box => "boxcutter/ol66-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-65-32",
        :box => "boxcutter/ol65-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "oraclelinux-64-32",
        :box => "boxcutter/ol64-i386",
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
        :hostname => "centos-71-64",
        :box => "boxcutter/centos71",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-70-64",
        :box => "boxcutter/centos70",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-67-64",
        :box => "boxcutter/centos67",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-66-64",
        :box => "boxcutter/centos66",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-65-64",
        :box => "boxcutter/centos65",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-64-64",
        :box => "boxcutter/centos64",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-67-32",
        :box => "boxcutter/centos67-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-66-32",
        :box => "boxcutter/centos66-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-65-32",
        :box => "boxcutter/centos65-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "centos-64-32",
        :box => "boxcutter/centos64-i386",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "sles11sp3",
        :box => "suse/sles11sp3",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "sles12",
        :box => "idar/sles12",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "opensuse-13",
        :box => "webhippie/opensuse-13.2",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "debian-jessies64",
        :box => "debian/jessie64",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "fedora23",
        :box => "akanto/fedora-23-server",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "rhel5",
        :box => "mcgill/rhel5-x86_64",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "rhel6",
        :box => "anandbitra/redhat-6.5",
        :ram => 512,
        :cpu => 1
      },
      {
        :hostname => "rhel7",
        :box => "bertrandjamin/rhel7",
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
    ansible.playbook = "playbook.yml"
    #ansible.inventory_path = "ansible_inventory"
    #ansible.host_key_checking = false
    #ansible.verbose = "v"
  end

end