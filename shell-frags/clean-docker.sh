#!/bin/bash


for did in $(docker ps -a  |grep -v IMAGE|awk '{print $1}'); do docker rm -f $did;done
for did in $(docker image ls |grep -v IMAGE|awk '{print $3}'); do docker image rm -f $did;done
