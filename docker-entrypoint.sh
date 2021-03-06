#!/bin/sh
set -e
echo "Test params csv: "$DATASOURCE

if [ "$1" = "debug" ]; then
   bash
elif [ "$1" = "testzip" ] && [ -d "$1" ]; then
   echo "testzip exists"
   mkdir -p /tmp/?/.testproject/agent || echo "already exists"   
   #(if root)mkdir -p /root/.testproject/agent || echo "already exists"
   testproject-agent start -fs -d /tmp
   echo "wait 20s to start" && sleep 20s    
   cp /tmp/runtime.json /tmp/?/.testproject/agent/ || echo "nothing to copy"    
   #(if root)cp /tmp/runtime.json /root/.testproject/agent || echo "nothing to copy"    
   testproject-agent browsers
   mkdir -p /tmp/reports
   if [ -z ${DATASOURCE+x} ]; 
     then for file in testzip/*; do testproject-agent run $file -o /tmp/reports; done; 
   else for file in testzip/*; do testproject-agent run $file -o /tmp/reports -p $DATASOURCE; done; 
   fi    
else
   mkdir -p /tmp/?/.testproject/agent || echo "already exists"
   #(if root)mkdir -p /root/.testproject/agent || echo "already exists"
   testproject-agent start -fs -d /tmp
   echo "wait 20s to start" && sleep 20ss
   cp /tmp/runtime.json /tmp/?/.testproject/agent/ || echo "nothing to copy"
   #cp /tmp/runtime.json /root/.testproject/agent || echo "nothing to copy"
   testproject-agent browsers
   echo "$1"
   mkdir -p /tmp/reports 
   if [ -z ${DATASOURCE+x} ]; 
     then testproject-agent run "$1" -o /tmp/reports; 
   else testproject-agent run "$1" -o /tmp/reports -p $DATASOURCE; 
   fi  
fi


