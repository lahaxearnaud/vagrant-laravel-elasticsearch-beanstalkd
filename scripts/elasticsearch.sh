#!/usr/bin/env bash

# java
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java7-installer unzip

# Elastic search
cd /tmp
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.zip
unzip elasticsearch-1.1.1.zip
rm elasticsearch-1.1.1.zip
mv elasticsearch-1.1.1 /var/elasticsearch

# plugin
./var/elasticsearch/bin/plugin --install termlist --url http://bit.ly/1dSIzoW

# add on start
echo "./var/elasticsearch/bin/elasticsearch"  >> /etc/rc.local