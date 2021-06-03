#!/bin/sh
set -e

if [ "$1" = "debug" ]; then
   bash
else
   mkdir -p /tmp/?/.testproject/agent || echo "already exists"
   testproject-agent start -fs -d /tmp
   echo "wait 10s to start" && sleep 10s
   cp /tmp/runtime.json /tmp/?/.testproject/agent/ || echo "nothing to copy"
   testproject-agent browsers
   echo "$1"
   mkdir -p /tmp/reports 
   testproject-agent run "$1" -o /tmp/reports
fi


