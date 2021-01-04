# dev-setup
Set up a development environment using Ansible.

## Requirements
This project is designed to set up a development environment from scratch, if desired, so there are very few prerequesites. Currently, only Linux hosts are supported.

## Installation
Run `make` to install Ansible and the necessary collections on your machine. 

If you are using a non-Debian-based distro, simply [install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) using your respective package manager. You will also need the [community general collection](https://github.com/ansible-collections/community.general).

### Local setup

To use this repo to set up your local machine, add the following to `/etc/ansible/hosts`:

```
[local]
localhost

[local:vars]
ansible_connection=local

[linux:children]
local
```

## Usage 

The `linux_setup` playbook will install packages on your linux hosts to set up your environment. By default, this will run against any hosts defined under the `linux` section in `/etc/ansible/hosts`. 
```
ansible-playbook playbooks/install_packages.yml -K
```