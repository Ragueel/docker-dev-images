#!/bin/bash


# setup prerequisites
apt-get update --fix-missing
apt-get install -y software-properties-common
apt-get update

export DEBIAN_FRONTEND=noninteractive


# install php dependencies
echo "Installing php"
add-apt-repository ppa:ondrej/php
apt-get install -y php8.2 php8.2-dev
echo "Installing php dependencies"
apt-get install -y php8.2-bcmath php8.2-zip php8.2-xml php8.2-mysql php8.2-sqlite php8.2-curl php8.2-cli php8.2-mbstring
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

