#!/bin/sh

cat $1 | 
    sed '/^$/d' | 
    sed '/^[Linux|Device]/d' | 
    awk '{print NR "," $2}'