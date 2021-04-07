#!/bin/bash


# Instalando os subsistemas

# Instalando o Java
apt-get update
apt install openjdk-11-jdk -y

# Instalando o jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update
apt-get install jenkins -y
systemctl start jenkins

# Instalação do git
apt install git git-flow -y

# Ansible
apt install ansible sshpass -y
pip3 install requests google-auth
ansible-galaxy collection install community.docker

# Terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
echo "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/terraform.list
apt update && apt install terraform -y

# Gcloud
apt install apt-transport-https ca-certificates gnupg -y
echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt update && apt-get install google-cloud-sdk -y
apt install google-cloud-sdk-app-engine-java -y

# Ansible + GCP
apt install python3-pip -y
python3 -m pip install requests google-auth

# Instalacao Docker
apt install docker.io -y
systemctl start docker
systemctl enable docker
usermod -aG docker jenkins
