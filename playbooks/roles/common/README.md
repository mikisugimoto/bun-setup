# Common

The `common` role sets up a basic development environment by installing library packages which should be useful regardless of the stack being developed against.

The operating systems which are supported are the files in `vars`; the main task will select the appropriate `vars` and `tasks` based on the local host (see main setup documentation).

## Usage

To install packages using this role using the `install_packages.yml` playbook, run the following:
```
ansible-playbook playbooks/install_packages.yml -K
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

- Edit the `defaults` to manage which [snap packages](https://snapcraft.io/) are installed. **Note**: snap packages which require the `--classic` flag must be listed under the `classic_snap_packages` heading.
- Edit the `vars` file matching your distribution to manage which packages are installed. Ensure the package names are correct for the package manager your distribution uses (ex. `apt`).

### Adding an OS distribution
Package managers are specific to certain distros and their derivatives, so it may be necessary to add a configuration which uses the appropriate package manager and package names (ex. `yum` for CentOS, `apt` for Ubuntu). The main task will automatically select the correct files based on your distribution. 

- Add a file to `tasks` with the name `setup_<DISTRO>.yml`, where `<DISTRO>` is the name of your OS distribution as recognized by [ansible_facts['distribution']](https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html#ansible-facts-distribution). 
- Add a file to `vars` with the name `<DISTRO>.yml`, where `<DISTRO>` is the name of your OS distribution as recognized by [ansible_facts['distribution']](https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html#ansible-facts-distribution).    

