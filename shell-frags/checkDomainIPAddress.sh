#!/bin/bash

for lineitem in $(grep -v ^# ~/notes/MasterDomList.md);
do

	NAME=$lineitem
	IP=$(dig +short $lineitem)
	echo $NAME: $IP
done
