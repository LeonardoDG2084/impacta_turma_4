#!/bin/bash


# Instalando os subsistemas

# Instalação do git
apt install git -y

# Ansible
apt install ansible sshpass -y
pip3 install requests google-auth
ansible-galaxy collection install community.docker

# Ansible + GCP
apt install python3-pip -y
python3 -m pip install requests google-auth

# Instalacao Docker
apt install docker.io -y
systemctl start docker
systemctl enable docker
usermod -aG docker ubuntu
