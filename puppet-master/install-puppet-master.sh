#!/bin/bash

PUPPET_FOLDER=puppet-enterprise-3.7.1-ubuntu-14.04-amd64
PUPPET_TAR=$PUPPET_FOLDER.tar.tar

hostname master

echo master > /etc/hostname

echo $(curl http://169.254.169.254/latest/meta-data/public-ipv4) master master.acme.com >> /etc/hosts

wget https://s3-eu-west-1.amazonaws.com/puppet-installers/$PUPPET_TAR

tar -xvf $PUPPET_TAR

echo now run the following : sudo ./$PUPPET_FOLDER/puppet-enterprise-installer
