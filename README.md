![Pain Relief](/images/ops-ans-medicine.png "Ops Manager Pain Relief with Ansible")
## Synopsis

*MongoDB* Cloud Manager, Atlas and Ops Manager are game changing solutions to help you manage your MongoDB estate.

However, there are differences between Ops Manager, which is an _on premise_ solution and the *Cloud Manager* and *Atlas* solutions.  Mainly in the fact that with *Ops Manager* you are expected to have some solution in place to help you deploy hosts and to help you install the Ops Manager Automation Agent - which enables you to manage the MongoDB nodes.

RedHat *Ansible* is just such an automation tool.  It can automate the package deployment, configuration and even the node deployment if you're using a cloud provider such as AWS.

This repository is intended to accomplish 2 main goals:

1. Present a very gentle/basic introduction to RedHat **Ansible**.

2. Present a possible automated solution to help you deploy and onboard into Ops Manager a MongoDB Cluster using Ansible.

## Motivation

This is a set of scripts written to conduct a fairly basic introduction to **ansible** and **ansible-playbook**. This was created for execution at the [NY MongoDB User Group](http://www.meetup.com/New-York-MongoDB-User-Group/).

It should be noted that the original *Ansible* scripts and playbooks were authored by Torsten Spindler of MongoDB.
This was created to simplify the process of walking through a basic demo of ansible.  The goal of the ansible scripts we set up and execute herein is to integration with deployment of a MongoDB Ops Manager Cluster.

These scripts are designed to deploy the MongoDB Software on the Ops Manager node and the MongoDB ReplicaSet members; then, configure the replica set members automation agent to talk to your Ops Manager host.

This process is something that is covered completely by the alternative MongoDB offerings *Cloud Manager*, and *Atlas*.

*Ops Manager*, however, leaves installation and configuration of the Automation Agents up to you - assuming you are leveraging something like *Ansible*, Chef, Puppet, Salt or similar.

These scripts assume you want to leverage *Ops Manager* rather than *Cloud Manager* or *Atlas*.  If you need more information on these offerings, please see [MongoDB Atlas and Cloud Manager](http://www.mongodb.com/cloud/).

## Installation

git clone https://github.com/mrlynn/ansible-demo.git

## Demo Setup

- See [Setup](/setup/)

## Demo execution

Each step in the demo is carried out by leveraging a corresponding script.  The scripts are listed here:

- 1_ansible-cfg.sh
- 2_ansible-hosts.sh
- 3_ansible-ping.sh
- 4_ansible-hosts.sh
- 5_ansible-script.sh
- 6_ansible_playbooks.sh
- 7_overall_process.sh
- 8_overall_process-script.sh

These scripts are designed to call the next strip in the sequence as the very last step.  To begin, simply execute the first script in the series.

## Prerequisites

- Install Ansible - See [Ansible](https://github.com/ansible/ansible)
- Optionally install pv to enable keyboard typing emulation as the scripts execute.
- Modify files/ansible-hosts to reference your own set of hosts

## Slide Deck from Demo

[NYMUG Slides 10-06-2016](/slides/Ansible-Ops-Manager.pdf)

## Demo Preview Images

### Ansible Configuration

![Ansible Configuration](/images/1-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #1")

### Ansible Host File

![Ansible Host File](/images/2-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #2")

### Ansible Modules - Ping

![Ansible Modules](/images/3-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #3")

### Ansible Environment Variables

![Ansible Environment Variables](/images/4-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #4")

### Ansible Modules - Script

![Ansible Modules - Script](/images/5-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #5")

### Ansible Playbooks

![Ansible Playbooks](/images/6-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #6")

### Orchestrating multple playbooks

![Ops Manager Deployment Process Overview](/images/7-ansible-demo.gif?raw=true "Ansible Demo Walkthrough #7")

## Tests

None yet.

## Frequently Asked Questions

1. How does *Ansible* work?
 - It depends on what you mean by work... but usually people as this question around carrying out execution of remote tasks.  *Ansible* leverages ssh connectivity and private keys.  You should examine the ansible.cfg file for the private_key_file setting.

 - Once the key file has been set, *Ansible* leverages Modules which are predefined scripts which are configured to act against specific functions - Like ping, for example.

2. What's the best way to learn *Ansible*?

 - Dive in.  Install it.  Configure it.  Start small - with the ping module, for example.  Then build on that.

## Contributors

[Mike lynn](mailto:merlynn@gmail.com)

## License

Apache
