#!/bin/bash
sudo amazon-linux-extras install epel -y 
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
sudo yum update -y
sudo yum install jenkins java-1.8.0-openjdk-devel -y
sudo systemctl daemon-reload
sudo systemctl start jenkins
echo "Jenkins is now installed and running on your EC2 instance. To configure Jenkins"
echo "Connect to http://<your_server_public_DNS>:8080 from your favorite browser. You will be able to access Jenkins through its management interface"
echo "Please copy the password below and paste it to management interface http://<your_server_public_DNS>:8080"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword