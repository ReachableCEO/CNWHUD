#!/bin/bash

export BORG_PASSPHRASE='YourS3crt'

borg create -v --stats <target dir with trialing />::$(date +%m-%d-%Y) <src dir to backup>
