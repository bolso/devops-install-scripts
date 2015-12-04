#!/bin/bash

sudo apt-get install -y apache2

cp /etc/apache2/apache2.conf /etc/puppetlabs/puppet/modules/qa-apache/files/apache2.conf

sudo apt-get remove -y apache2

rm -rf /var/www

sudo apt-get purge -y apache2
