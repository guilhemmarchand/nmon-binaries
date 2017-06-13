#!/usr/bin/env bash

# Don't check for known_host
export ANSIBLE_HOST_KEY_CHECKING=False

echo "****************** Starting vagrant VMs: ******************"

list=`vagrant status | grep 'ubuntu' | awk '{print $1}'`

for vm in $list; do
	vagrant up $vm
		ansible-playbook --private-key=insecure_private_key -u vagrant -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory --limit $vm playbook.yml
done

echo "****************** Verifying ping connection: ******************"

# Check ping connection
ansible all -m ping --private-key=insecure_private_key -u vagrant -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory

exit 0
