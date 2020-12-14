# KVM
Terraform code to provision VM in KVM


### To Install Terraform please follwo the below: #### 

## Ubuntu 18.04...

* sudo apt-get update
* sudo apt-get install wget unzip
* sudo wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip
* sudo unzip ./ terraform_0.12.2_linux_amd64.zip –d /usr/local/bin
* terraform –v

## Centos 7

* sudo yum update
* sudo yum install wget unzip
* sudo wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip
* sudo unzip ./terraform_0.12.2_linux_amd64.zip –d /usr/local/bin
* terraform –v

### Install KVM plugin #####

* cd ~/.terraform.d
* mkdir plugins

## ubuntu ...

* sudo apt -y install wget
* wget https://github.com/dmacvicar/terraform-provider-libvirt/releases/download/v0.6.0/terraform-provider-libvirt-0.6.0+git.1569597268.1c8597df.Ubuntu_18.04.amd64.tar.gz
* tar xvf terraform-provider-libvirt-0.6.0+git.1569597268.1c8597df.Ubuntu_18.04.amd64.tar.gz
* mv terraform-provider-libvirt ~/.terraform.d/plugins/

## CENTOS

* sudo yum -y install wget
* wget https://github.com/dmacvicar/terraform-provider-libvirt/releases/download/v0.6.0/terraform-provider-libvirt-0.6.0+git.1569597268.1c8597df.Fedora_28.x86_64.tar.gz
* tar xvf terraform-provider-libvirt-0.6.0+git.1569597268.1c8597df.Fedora_28.x86_64.tar.gz
* mv terraform-provider-libvirt ~/.terraform.d/plugins/
  
