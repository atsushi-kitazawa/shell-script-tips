#!/bin/sh

# r/s, w/s to csv
cat $1 | 
    sed '/^$/d' | 
    sed '/^[Linux|Device]/d' | 
    awk 'BEGIN{print "time,r/s,w/s"} {print NR "," $2 "," $3}'