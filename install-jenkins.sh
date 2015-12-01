#!/bin/bash

cd ~

# Setup repo and install
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins

# Launch jenkins
sudo service jenkins start
sudo chkconfig jenkins on
