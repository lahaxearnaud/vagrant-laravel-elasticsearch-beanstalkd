#!/usr/bin/env bash
clear;

ip=`ip address show eth1 | grep 192 | cut  -d ' ' -f 6 | cut -d '/' -f 1`;
hostname=`hostname`;
message="
====================================
Ip: $ip
Hostname: $hostname
Elastic search: $ip:9200
====================================
";

echo $message;