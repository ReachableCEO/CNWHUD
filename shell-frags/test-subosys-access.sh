#!/bin/bash

IFS=$'\n\t'

suboNodeList=(
#"subopi1" #MorsePod m6
#"subopi2" #seeduino lora gateway hat
#"subopi3" # no hat
#"subopi4" #dragino hat
#"subopi5" #pi sense hat
#"subopi6" #pi sense hat
#"subobench" #benchtop computer
"subodev" #develop workloads
"suboqa" #test workloads
"suboprod" #run actual workloads here
"buildbox" #build all the things
)

for suboNode in ${suboNodeList[@]}; do 
	COMMAND="$(ssh $suboNode md5sum .ssh/authorized_keys)"
	echo "Testing ssh authorized_keys on $suboNode" $COMMAND
	#COMMAND="$(ssh $suboNode uptime)"
	#echo "Testing load on $suboNode" $COMMAND
done

