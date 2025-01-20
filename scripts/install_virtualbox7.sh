#!/bin/bash

sudo mkdir -p /etc/apt/keyrings
wget -q -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /etc/apt/keyrings/oracle-virtualbox-2016.gpg

cat /etc/apt/keyrings/oracle-virtualbox-2016.gpg
cat /etc/os-release

# do in terminal
# sudo nano /etc/apt/sources.list.d/virtualbox.sources

# paste this:
# Types: deb
# URIs: https://download.virtualbox.org/virtualbox/debian
# Suites: jammy
# Components: contrib
# Architectures: amd64
# Signed-By: /etc/apt/keyrings/oracle-virtualbox-2016.gpg

# cat /etc/apt/sources.list.d/virtualbox.sources
# sudo apt update
# sudo apt install virtualbox-7.1