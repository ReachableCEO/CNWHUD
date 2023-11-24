#!/bin/bash
while IFS= read -r line; do
    if echo $line | grep -q "^From:" ; then
        # Only take the first line starting with "From: "
        if [ ! -n "$F" ] ; then
            F=`echo $line | grep 'From:' | awk -F: '{print $2}'`
        fi
    fi
    if echo $line | grep -q "^Subject:" ; then
        S=`echo $line | grep 'Subject:' | awk -F: '{print $2}'`
    fi
done
task add +email due:today "E-mail $S (from $F)"
