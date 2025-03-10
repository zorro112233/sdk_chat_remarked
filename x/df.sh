#!/bin/bash

GF="dart format ."

cmd=$GF
echo "Execute: $cmd"
cd ./lib || exit
eval "$cmd"
cd ..
