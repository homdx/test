#!/bin/bash

ip=`getent hosts proxyprivoxy | awk '{ print "listen-address " $1 ":8118" }'`
echo Detected Docker IP $ip
echo $ip >>config.txt
echo debug 1 >>config.txt