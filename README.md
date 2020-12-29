# dev-setup
Set up a development environment using Ansible.

## Requirements
This project is designed to set up a development environment from scratch, if desired, so there are very few prerequesites. The only thing required is having an operating system distribution which is currently supported, or add the support yourself. Here are the currently supported dsitros:
- Ubuntu [20.04]


## Installation

### Configure Ansible
Run `make` to install Ansible on your machine. This will also add your local machine (`localhost`), ungrouped, to the list of hosts at `/etc/ansible/hosts` so you can set up your environment locally.

### Basic Packages
The `common` role will install basic packages to your computer which you might want for your development environment, regardless of tech stack. To install them, run:
```
ansible-playbook playbooks/install_packages.yml -K
```

## Development

You might find that your OS distro is not in the list, or you want to customize the packages which are installed. You will find instructions on how to edit and append in each sub-directory's `README`.