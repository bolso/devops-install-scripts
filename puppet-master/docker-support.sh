#!/bin/bash

# Puppet docker plugin
puppet module install garethr-docker

# Jad's puppet manifest
apt-get install -y git

cd /etc/puppetlabs/puppet/modules

git clone http://ec2-54-229-188-230.eu-west-1.compute.amazonaws.com/root/docker-helloscalatra.git

