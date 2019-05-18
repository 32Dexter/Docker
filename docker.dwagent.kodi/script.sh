#!/bin/bash

string1=$(echo $CODE | wc -l)

if [[ $string1 -gt 0 ]]; then
      ./script.dwagent.sh
      ./datacenter/dwagent/native/dwagsvc start
else
     exit 0
fi

