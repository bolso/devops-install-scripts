#!/bin/bash

sudo modprobe bridge

# install stuff and register postfix as a startup service
sudo yum install -y curl openssh-server postfix cronie
sudo service postfix start
sudo chkconfig postfix on

# Install & configure gitlab
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
sudo yum install -y gitlab-ce
sudo gitlab-ctl reconfigure


