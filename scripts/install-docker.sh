#!/bin/bash -e

ctx logger info "Installing docker..."

DEBIAN_FRONTEND=noninteractive

# add docker sources to aptitude
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo apt-get update

# upgrade the kernel
# sudo apt-get upgrade -y)
# sudo apt-get install -y linux-image-generic-lts-raring linux-headers-generic-lts-raring

sudo apt-get install -y lxc-docker
ctx logger info "Finished installing docker"