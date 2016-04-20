# Nmon binaries for Linux x86_64 / i686

## nmon version: 16e

See the Nmon Linux site: 

* http://nmon.sourceforge.net

These nmon binaries are being automatically compiled for multiple Linux flavor using Vagrant boxes and Ansible playbook.

See: 

* https://www.vagrantup.com

* https://github.com/boxcutter

## Binaries description

* "x86_64" are binaries compiled for x86 64 bits processors

* "x86" are binaries compiled for x86 32 bits processors

## Linux distributions

Currently there binaries compiled for:

* Oracle Linux: *ol*

* CentOS: *centos*

## Howto

The delivered Ansible playbook is also used to test the Nmon App for Splunk and Universal Forwarder deployment tests, to
use it out of the box, you would need to:

* Have the "/opt/nmon-binaries" directory existing (can be a symbolic link)

* Have Splunk Universal Forwarders binaries (*.tar.gz) available in "/opt/deployment/splunk_bin" (for both 32/64 bits)

Finally, starting the virtual machine (vagrant up) will automatically compile nmon binaries in nmon_source

But you can also off course simply use part of the code you would be intesrested in !