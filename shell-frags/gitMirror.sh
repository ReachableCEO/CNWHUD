#!/bin/bash

set -euo pipefail

#A script to setup git mirroring

#Works with aliases
# lpom='git add -A :/ ; git commit -va'
# gpom='git push all master'
# tesla='lpom;gpom' 

PRIMARY_TARGET="$1"
SECONDARY_TARGET="$2"


git remote add all $PRIMARY_TARGET
git remote set-url --add --push all $PRIMARY_TARGET
git remote set-url --add --push all $SECONDARY_TARGET

