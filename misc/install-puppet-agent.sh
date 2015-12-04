#!/bin/bash

AGENT_NAME=agentX
AGENT_HOST=$AGENT_NAME.acme.com
PUPPETMASTER_IP=52.17.163.101

hostname $AGENT_HOST

echo $AGENT_HOST > /etc/hostname

echo $(curl http://169.254.169.254/latest/meta-data/local-ipv4) $AGENT_NAME $AGENT_HOST >> /etc/hosts

echo $PUPPETMASTER_IP master master.acme.com >> /etc/hosts
echo $PUPPETMASTER_IP puppet master.acme.com >> /etc/hosts

curl -k https://master.acme.com:8140/packages/current/install.bash | sudo bash
