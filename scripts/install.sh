#!/usr/bin/env bash
echo "Installing AWS CLI"
sudo apt-get update
sudo apt-get install -y python-pip unzip
pip install awscli

echo "Installing Terraform"
mkdir ~/bin
cd ~/bin
wget "https://releases.hashicorp.com/terraform/0.12.0/terraform_0.12.0_linux_amd64.zip"
unzip terraform_0.12.0_linux_amd64.zip