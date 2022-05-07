#!/bin/sh

cat $1 | sed '/^$/d' | sed '/^[Linux|Device]/d' | awk '{print $1 "," $2}'