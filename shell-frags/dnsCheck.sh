#!/bin/bash


for vmName in $(cat proxVmList); do 
	IP="$(dig +short $vmName.turnsys.net)"
	echo VmName: $vmName  IP: $IP
done           
