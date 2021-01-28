# dev-setup
Set up a development environment using Ansible.

## Requirements
This project is designed to set up a development environment from scratch, if desired, so there are very few prerequesites. Currently, only Linux hosts are supported.

## Installation
Run `make` to install Ansible and the necessary collections on your machine. 

If you are using a non-Debian-based distro, simply [install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) using your respective package manager. You will also need the [community general collection](https://github.com/ansible-collections/community.general).


## Usage 

The `linux_setup` playbook will install packages on your linux hosts to set up your environment. By default, this will run against all hosts defined in `inventory/hosts`.

### Local setup

Running playbooks against your local machine requires a local connection. For example, to run the `linux_setup.yml` against your local machine, you should have the following in your `inventory/hosts`, where `mycomputer` is the name of your machine:
```
---
all:
    hosts:
        localhost:
            ansible_connection: local
    children:
        base:
            hosts:
                mycomputer:
```
Then, you can run this command to execute the setup against `mycomputer`:
```
ansible-playbook -K -c local --limit mycomputer linux_setup.yml
```