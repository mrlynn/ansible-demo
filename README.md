## Synopsis

This is a set of scripts written to conduct a fairly basic introduction to **ansible** and **ansible-playbook**. This was created for execution at the [NY MongoDB User Group](http://www.meetup.com/New-York-MongoDB-User-Group/).

## Motivation

This was created to simplify the process of walking through a basic demo of ansible.

## Installation

git clone https://github.com/mrlynn/ansible-demo.git

## Demo execution

Each step in the demo is carried out by leveraging a corresponding script.  The scripts are listed here:

1_ansible-cfg.sh       3_ansible-ping.sh      5_ansible-script.sh
2_ansible-hosts.sh     4_ansible-hosts.sh     6_ansible_playbooks.sh

To begin the demo execute 1_ansible-cfg.sh, then 2_ansible-ping.sh, etc.

## Prerequisites

- Install Ansible - See [Ansible](https://github.com/ansible/ansible)
- Modify files/ansible-hosts to reference your own set of hosts

## Demo Preview Images

### Ansible Configuration
- ![Alt text](/images/1-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #1")
### Ansible Host File
- ![Alt text](/images/2-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #2")
### Ansible Modules - Ping
- ![Alt text](/images/3-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #3")
### Ansible Environment Variables
- ![Alt text](/images/4-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #4")

## Tests

None yet.

## Contributors

[Mike lynn](mailto:merlynn@gmail.com)

## License

Apache
