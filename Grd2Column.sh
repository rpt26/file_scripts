#!/bin/sh

head -n 3 $1.grd > $1.column
tail -n +5 $1.grd >> temp
sed -i 's/ /\n/g' temp
sed '/^$/d' temp >> $1.column

rm temp
