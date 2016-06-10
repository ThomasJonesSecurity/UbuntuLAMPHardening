#!/bin/bash

# INITIAL UPDATE
# ------------------------------------
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

# RELEASE UPDATE
# ------------------------------------
apt-get install update-manager-core
do-release-upgrade -d 
lsb_release -a

# REFRESH UPDATE
# ------------------------------------
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

# CLEANUP
# ------------------------------------
sudo apt-get autoremove
sudo apt-get clean

# UPDATE LOCATE DB
# ------------------------------------
sudo updatedb
