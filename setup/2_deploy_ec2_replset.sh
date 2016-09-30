#!/bin/bash

source ../functions.sh
inventory="ansible-hosts"

title "Deploy an EC2 Instances for MongoDB Replica Set"
echo "Ensure you are using the right private keyfile in ansible.cfg"

ansible-playbook -i ${inventory} playbooks/playbook-ec2-replset.yml

