#!/bin/sh
echo ====> Setting up ..
################################################################ setup docker

echo ====> Install Docker ..

# install prerequisites
sudo apt-get install apt-transport-https ca-certificates software-properties-common -y

# Download and install Docker.
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh

# Give the ‘pi’ user the ability to run Docker.
sudo usermod -aG docker pi

# Import Docker CPG key.
sudo curl https://download.docker.com/linux/raspbian/gpg

# Setup the Docker Repo.
echo 'deb https://download.docker.com/linux/raspbian/ stretch stable' | sudo tee -a /etc/apt/sources.list

# update and upgrade
sudo apt-get update -y

sudo apt-get upgrade -y


# start docker
sudo systemctl start docker.service

# show docker info
sudo docker info


############################################################### pull watch tower to auto pull latest image from the given repository

docker pull v2tec/watchtower
docker run v2tec/watchtower