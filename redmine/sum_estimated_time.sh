#!/bin/sh

HOST="localhost:8080"
KEY="xxxxxxxxx"
PROJECT="test-project1"

ret=$(curl -s -H "Content-Type: application/json" -X GET -H "X-Redmine-API-Key: ${KEY}" http://${HOST}/projects/${PROJECT}/issues.json |
    jq '.issues[].estimated_hours')

sum=0
for r in $ret; do
   sum=`expr $sum + $r` 
done
echo "sum is ${sum}"
