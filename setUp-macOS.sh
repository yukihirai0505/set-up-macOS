#!/bin/sh

set -e
set -u

has() {
    type "$1" > /dev/null 2>&1
}

# Homebrew install & update
if ! has brew; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
fi

# Intall ansible
if ! has pip; then
    sudo easy_install pip
fi

if ! has ansible; then
    sudo pip install ansible
fi

# Execute ansible
ansible-playbook -i ./ansible/localhost ./ansible/localhost.yml --ask-sudo-pass

BOLD=$(tput bold)
BLUE=$(tput setaf 4)
NORMAL=$(tput sgr0)

printf "${BLUE}==>${NORMAL} ${BOLD}Let's eat 🍣 ${NORMAL}\n"
