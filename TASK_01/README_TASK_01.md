## Setup Linux VM (Amazon Linux / Ubuntu)

1) Login into AWS Cloud account
2) Create Linux VM and connect to it using MobaXterm

## Install Docker In Amazon Linux VM

```
sudo yum update -y 
sudo yum install docker -y
sudo service docker start
sudo usermod -aG docker ec2-user
exit
```
## Install Docker In Ubuntu VM

```
sudo apt update
curl -fsSL get.docker.com | /bin/bash
sudo usermod -aG docker ubuntu 
exit
```

## Verify docker installation

```
docker -v
```


### Commands to run the Image and access the web-server

Step1:
First we need to clone the repository.
$ git clone https://github.com/swapie8174/Assignment01.git

step2 :
Go inside the folder Assignment01

Step3:
$ docker build -t my-web-server .

Step4:
$ docker run -d -p 80:80 my-web-server

Note: Allow port number 80 for inbound traffice in security group

Step5:
access the webserver link
http://<EC2-PUBLIC-IP>:80




