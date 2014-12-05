#!/bin/sh

head -n 4 $1.asc > $1.column
tail -n +5 $1.asc >> temp
sed -i 's/ /\n/g' temp
sed '/^$/d' temp >> $1.column

rm temp

