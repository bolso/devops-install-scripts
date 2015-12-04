#!/bin/bash

cd ~

# Setup repo and install
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins

# Launch jenkins
sudo service jenkins start
sudo chkconfig jenkins on

# Install maven on the box
wget http://apache.mirrors.ionfish.org/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz

sudo tar xzf apache-maven-3.3.3-bin.tar.gz -C /usr/local

sudo ln -s /usr/local/apache-maven-3.3.3 /usr/local/maven
sudo ln -s /usr/local/maven/bin/mvn /bin/mvn

sudo yum install -y java-1.7.0-openjdk-devel.x86_64

# Configure maven location in jenkins

# Create hello-scalatra job

