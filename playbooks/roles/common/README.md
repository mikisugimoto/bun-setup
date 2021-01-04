# Common

The `common` role sets up a development environment by installing library packages.

## Usage

To configure a linux host using this role using the `linux_setup.yml` playbook, run the following:
```
ansible-playbook playbooks/linux_setup.yml -K
```
To include this role in a playbook:
```
---
# sample playbook
- name: do something with the common role
  hosts: all
  roles:
    - common
```

## Development

### Customizing the packages
Everyone likes to have their development environment set up _just so_. The following is how to alter which packages are installed by Ansible.

- Edit the `defaults` to manage which packages will are considered "essential" and will always be installed.
- Edit the files in `inventory/group_vars` to manage all additional packages.

### OS distribution management
Although the `ansible.builtin.package` module will detect your distribution and use the appropriate package manager, the names of the packages themselves can vary between distributions. Simply update the names of the packages in `defaults` or `group_vars` to the correct package name.

