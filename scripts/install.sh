#!/usr/bin/env bash
echo "Installing AWS CLI"
sudo apt-get update
sudo apt-get install -y python-pip unzip
pip install awscli

echo "Installing Terraform"
mkdir /home/vagrant/bin
chown vagrant:vagrant /home/vagrant/bin
wget "https://releases.hashicorp.com/terraform/0.12.0/terraform_0.12.0_linux_amd64.zip" -o /dev/null
unzip terraform_0.12.0_linux_amd64.zip -d /home/vagrant/bin && rm -f terraform_0.12.0_linux_amd64.zip