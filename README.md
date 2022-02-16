# automate-rt
Red team automation for COFC Cyber Range

## Description and Objective:

The objective of this repository is to simulate a red team across multiple unix based endpoints. This project leverages `ansible` as the means to deploy and simulate a threat actor for competition practice. This repository is created in conjuiction to the [College of Charleston Cyber Range](https://github.com/cofcsecurity/cyber-range). 

With this being said, there are two assumptions made about the target environment:
1. All endpoints are unix based and run a flavor of `fedora` or `debian`
2. Credentials are available to the Red Team as they are made available to the target team members 

## Prerequisites:

1. The compromised user should be in `/etc/sudoers`
2. Logins to all the endpoints with valid credentials [**OPTIONAL: generate an SSH key and share it with the target endpoints**]
3. `Python3` is readily available
4. `Ansible` can be installed on the host system
5. If the system does not have the following directories created please do one of the following:
    - Run the `config.sh` script in the directory with `sudo` or the root user (this adds the necessary directory and files for the playbook to run)
    - Use the `-i` flag and add the path to the `hosts` file under `ansible-config`

## Setup:

There is a `config.sh` script that will do the following:
1. Install `ansible`, `python3`, and `python3-pip`
2. Create the `/etc/ansible` directory
3. Copy over the necessary files for the directory

## Usage:


```bash

git clone https://github.com/pmccabe5/automate-rt

cd automate-rt

sudo ./conig.sh

ansible-playbook -i ansible-config/hosts -u [user] -k -K playbooks/rt-deb.yaml

```

1. `-u`: user
2. `-k`: user password [**OPTIONAL: if using key based authentication**]
3. `-K`: BECOME password [**OPTIONAL: if using key based authentication**]
4. `-i`: inventory (hosts) file/path/comma separated list (if you don't move the hosts file to `/etc/ansible/hosts`)