#!/bin/bash

IFS=$'\n\t'

kbNodeList=(
"db1"
"db2"
"db3"
)

for kbNode in ${kbNodeList[@]}; do 
	COMMAND="$(ssh $kbNode uptime)"
	echo "Load on $kbNode" $COMMAND
done

kubectl get nodes -o wide

kubectl get pods -A -o wide