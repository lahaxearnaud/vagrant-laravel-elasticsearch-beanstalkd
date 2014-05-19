#!/usr/bin/env bash

# java
apt-get install -y openjdk-7-jre unzip

# Elastic search
cd /tmp
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.zip
unzip elasticsearch-1.1.1.zip
rm elasticsearch-1.1.1.zip
mv elasticsearch-1.1.1 /var/elasticsearch

# plugin
/var/elasticsearch/bin/plugin --install termlist --url http://bit.ly/1dSIzoW

# add on start
echo "/var/elasticsearch/bin/elasticsearch"  >> /etc/rc.local

# start 
/var/elasticsearch/bin/elasticsearch > /dev/null &