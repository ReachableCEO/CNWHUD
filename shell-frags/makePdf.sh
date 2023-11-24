#!/bin/bash

 pandoc \
    < $1 \
     --from=markdown \
     --number-sections \
     --toc \
     --output=$1.pdf