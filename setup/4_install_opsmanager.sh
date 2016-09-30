#!/bin/bash

source ../functions.sh
inventory="ansible-hosts"

echo `clear`
title "Install Ops Manager Software"
echo "Ensure you are using the right private keyfile in ansible.cfg"

pause
typeit "ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-prerequisites.yml"
ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-prerequisites.yml
title "Now we can install the needed MongoDB Server Daemons on the Ops Manager Host"
pause
typeit "ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-mongods.yml"
ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-mongods.yml
title "Now we can install the opsmanager package"
typeit "ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-package.yml"
ansible-playbook -i ${inventory} playbooks/playbook-opsmanager-package.yml

