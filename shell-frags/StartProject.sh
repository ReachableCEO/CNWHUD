#!/bin/bash

set -euo pipefail

#arguments
#1) directory to start in

START_DIR="$1"

cd $START_DIR

code .