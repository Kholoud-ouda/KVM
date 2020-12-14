# KVM
Terraform code to provision VM in KVM


### To Install Terraform please follwo the below: #### 

## Ubuntu 18.04...

1- sudo apt-get update
2- sudo apt-get install wget unzip
3- sudo wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip
4- sudo unzip ./ terraform_0.12.2_linux_amd64.zip –d /usr/local/bin
5- terraform –v

## Centos 7

1- sudo yum update
2- sudo yum install wget unzip
3- sudo wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip
4- sudo unzip ./terraform_0.12.2_linux_amd64.zip –d /usr/local/bin
5- terraform –v

### Install KVM plugin #####

1- cd ~/.terraform.d
2- mkdir plugins

## ubuntu ...

1- sudo apt -y install wget
2- wget https://github.com/dmacvicar/terraform-provider-libvirt/releases/download/v0.6.0/terraform-provider-libvirt-0.6.0+git.1569597268.1c8597df.Ubuntu_18.04.amd64.tar.gz
3- tar xvf terraform-provider-libvirt-0.6.0+git.1569597268.1c8597df.Ubuntu_18.04.amd64.tar.gz
4- mv terraform-provider-libvirt ~/.terraform.d/plugins/

## CENTOS

1- sudo yum -y install wget
2- wget https://github.com/dmacvicar/terraform-provider-libvirt/releases/download/v0.6.0/terraform-provider-libvirt-0.6.0+git.1569597268.1c8597df.Fedora_28.x86_64.tar.gz
3- tar xvf terraform-provider-libvirt-0.6.0+git.1569597268.1c8597df.Fedora_28.x86_64.tar.gz
4- mv terraform-provider-libvirt ~/.terraform.d/plugins/
  
