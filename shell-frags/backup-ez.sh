#!/bin/bash

export BORG_PASSPHRASE=$(magicstuffhere-tbd)

borg create -v --stats /media/charles/CPWBKUP/Charles-Backup/BorgBkups/::$(date +%m-%d-%Y) /home/charles
