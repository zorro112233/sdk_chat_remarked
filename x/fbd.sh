#!/bin/bash

cmd="flutter pub run build_runner build --delete-conflicting-outputs"
echo "Execute: $cmd"
eval "$cmd"
