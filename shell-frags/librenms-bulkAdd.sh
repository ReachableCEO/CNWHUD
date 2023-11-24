#!/bin/bash

hostsToAdd=(
pfv-vmsrv-06.turnsys.net
)

IFS=$'\n\t'

for nodeToAdd in ${hostsToAdd[@]}; do
        ./delhost.php $nodeToAdd
        ./addhost.php $nodeToAdd kn3lmgmt ; ./discovery.php -h $nodeToAdd kn3lmgmt ;  ./poller.php -h $nodeToAdd kn3lmgmt &
done

