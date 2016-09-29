## Synopsis

This directory contains details and instructions to help you get set up to run the ansible-demo.

## Prerequisites

1. Ansible

 - On Mac OS - simply type *brew install ansible*

 - ![Brew Install ansible](/images/brew_install_ansible.png "Brew Install Ansible")

2. AWS SSH Keys

 - You need to have your working AWS Keys.  These will be used to enable you to deploy ec2 instances from ansible.
 - If you do not have working keys, visit this link for instructions: [AWS: Creating a Key Pair](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
 - Place this key in the filesystem on your laptop - most likely in ~/.ssh
  - e.g. /Users/mlynn/.ssh/michael.lynn.pem
 - Modify the ansible.cfg file in the top level directory of this repo with the location of your key file.
  - private_key_file = /Users/mlynn/.ssh/michael.lynn.pem

## Getting Setup

Once you have the prereqs squared away, you're ready to begin either getting your nodes deployed for demo, or if you already have nodes deployed, you can skip this next section.

### Node Deployment

Ansible automates the process of package deployment, configuration as well as node deployment.  In this section, we're going to leverage Ansible's ability to connect directly to AWS/EC2 to deploy new instances for our demo.

To speed things up - I'll leave you to work out those details as we'll not have time to leverage the EC2 Automation for this demo.

So - You'll want to deploy one M3.xlarge for your Ops Manager machine and 3 t2.small's.  Here's our architecture:
```
+----------------+                               +---------------+
|                |                               | (t2.small)    |
|  OPS MANAGER   |                               |    PRIMARY    |
|                |                               +---------------+
| (m3.xlarge)    |       +-----------------------+ OM AGENT      |
|                |       |                       +-------+-------+
+---------+------+       |                               |
          |              |                  +------------+-----------+
          |              |                  |                        |
          |              |          +-------v-------+        +-------v-------+
          |              |          | (t2.small)    |        | (t2.small)    |
          |              |          |   SECONDARY   |        |   SECONDARY   |
          |              |          +---------------+        +---------------+
          +--------------+          | OM AGENT      |        | OM AGENT      |
          |                         +-------+-------+        +-------+-------+
          |                                 |                        |
          |                                 |                        |
          |                                 |                        |
          |                                 |                        |
          +---------------------------------+------------------------+

```
<<<<<<< HEAD

=======
>>>>>>> 8bec1e16c15c77dbed7c4ebb6c6fc4165ccd134b
