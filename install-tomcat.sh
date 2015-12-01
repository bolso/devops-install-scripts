#!/bin/bash

TOMCAT_VERSION='7.0.65'

wget http://apache.mirror.anlx.net/tomcat/tomcat-7/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz

cd /opt

sudo tar xzf /home/ec2-user/apache-tomcat-$TOMCAT_VERSION.tar.gz
