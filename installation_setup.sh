#!/bin/bash

#Update the apt package index and install packages to allow apt to use a repository over HTTPS
sudo apt-get install -y \
    curl \
    apt-transport-https \
    ca-certificates \
    gnupg-agent \
    software-properties-common

### docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#### install docker
#remove old packages
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update

#Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

#Setup stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#Install docker engine
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

### Add user to docker group
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
