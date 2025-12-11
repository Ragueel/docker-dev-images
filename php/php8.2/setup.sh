#!/bin/bash


# setup prerequisites
apt-get update --fix-missing
apt-get install -y software-properties-common
apt-get update

export DEBIAN_FRONTEND=noninteractive


# install php dependencies
echo "Installing php"
add-apt-repository ppa:ondrej/php
apt-get install -y php8.4 php8.4-dev
echo "Installing php dependencies"
apt-get install -y php8.4-bcmath php8.4-zip php8.4-xml php8.4-mysql php8.4-sqlite php8.4-curl php8.4-cli php8.4-mbstring php8.4-gd
curl -sS https://getcomposer.org/installer | php -- --install-dir=/bin --filename=composer
echo "Installed php"

# install node and npm
echo "Installing node"
apt-get install curl gpg -y
mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt-get update && apt-get install -y nodejs
apt-get install -y lsb-release gnupg2 ca-certificates apt-transport-https
apt install -y aptitude
aptitude install -y npm

echo "Congrats everything is installed"

