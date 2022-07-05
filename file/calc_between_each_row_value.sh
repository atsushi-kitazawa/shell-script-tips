#!/bin/sh
#
# 各行の値の差分を計算して出力します
#

FIRST_ROW=true
BEFORE_ROW=""

cat $1 | while read line
do
# 一行目はスキップ
if "${FIRST_ROW}" ; then
    BEFORE_ROW=$line
    FIRST_ROW=false
    continue
fi

#echo $(( $line-$BEFORE_ROW ))
# 絶対値で取得
echo $(( $line-$BEFORE_ROW )) | sed 's/^-//'

BEFORE_ROW=$line
done