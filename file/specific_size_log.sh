#!/bin/sh
#
# 指定されたサイズのログファイルを出力します
#

MAX_FILE_SIZE=1024
FILE_NAME="test.log"

log=""
for i in $(seq 1 100); 
do 
	log=$log"A" 
done

while true
do
	echo `date '+%Y/%m/%d %H:%M:%S'`" "$log >> $FILE_NAME
	file_size_kb=`du -k $FILE_NAME | cut -f1`
	if [ $file_size_kb -gt $MAX_FILE_SIZE ]; then
		break
	fi
done
