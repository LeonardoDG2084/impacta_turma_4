#!/bin/bash


# Instalando os subsistemas

# Instalação do git
apt install git -y

# Ansible
apt install ansible sshpass -y
pip3 install requests google-auth
ansible-galaxy collection install community.docker

# Terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
echo "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/terraform.list
apt update && apt install terraform -y

# Ansible + GCP
apt install python3-pip -y
python3 -m pip install requests google-auth

# Instalacao Docker
apt install docker.io -y
systemctl start docker
systemctl enable docker
usermod -aG docker jenkins
systemctl restart jenkins
