#!/bin/sh

tail -n +4 $1.grd > temp
sed -i 's/ /\n/g' temp
sed -i '/^$/d' temp
sed -ri 'N; N; N; N; N; s/(.+)\n(.+)\n(.+)\n(.+)\n(.+)\n(.+)/ \1 \2 \3 \4 \5 \6/g' temp
echo ' ' > $1.BMasc
cat temp >> $1.BMasc

rm temp
