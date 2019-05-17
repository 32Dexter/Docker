#!/bin/bash
string1=$(echo $CODE | wc -l)

if [[ $string1 -gt 0 ]]; then
      printf '1\n/datacenter/dwagent\n1\n1\n'$CODE | ./home/dwagent.sh
else
     exit(0)
fi
