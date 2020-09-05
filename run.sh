#!/bin/bash

ansible-playbook -i inventory.lst pb-dns-resolver.yml
[ $? -eq 0 ] || exit 1

ansible-playbook -i inventory.lst pb-timezone.yml
[ $? -eq 0 ] || exit 1

ansible-playbook -i inventory.lst pb-firewall.yml
[ $? -eq 0 ] || exit 1

ansible-playbook -i inventory.lst pb-chrony-ntp.yml
[ $? -eq 0 ] || exit 1

ansible-playbook -i inventory.lst pb-common-pre.yml
[ $? -eq 0 ] || exit 1

ansible-playbook -i inventory.lst pb-mysql-server.yml
[ $? -eq 0 ] || exit 1

ansible-playbook -i inventory.lst pb-httpd-php.yml
[ $? -eq 0 ] || exit 1

ansible-playbook -i inventory.lst pb-phpIPAM.yml
[ $? -eq 0 ] || exit 1

