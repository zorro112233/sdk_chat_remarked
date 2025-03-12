#!/bin/bash

cmd="dart run build_runner build --delete-conflicting-outputs"
echo "Execute: $cmd"
eval "$cmd"
