
all: install_ansible

check_linux:
		ansible-playbook -K linux_setup.yml -c local --limit $(host) --check

install_ansible:
		@sh ./debian_install.sh

run_linux:
		ansible-playbook -K linux_setup.yml -c local --limit $(host)

.PHONY: install_ansible
