## Setup Linux VM (Amazon Linux )

========================
Terraform Installation
========================

1) Create Linux VM in AWs Cloud

2) Connect with Linux VM using MobaXterm

3) Execute below commands to setup Terraform

$ sudo yum install -y yum-utils shadow-utils

$ sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

$ sudo yum -y install terraform

4) Verify terraform installation

$ terraform -v

========================
GCP API
========================
To create infrastructure in GCP terraform need the access

Step 1:
Give the Project Name
Step 2:
Create the IAM User (IAM -> SERVICE ACCOUNT -> Create Service Account)
Step 3:
Create the Key which is in JSON format, Use this in provider.tf as credentials.




================================================
 Google Cloud Storage (GCS) bucket Creation
================================================

Execute following command to create

**To Initialize the terraform directory**
$ terraform init 

**To validate terraform configuration**
$ terraform validate

**To format terraform configuration**
$ terraform validate

**for dry run terraform script**
$ terraform plan

**To create the bucket in GCP**
$ terraform apply