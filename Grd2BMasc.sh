#!/bin/sh

tail -n +4 $1.grd > temp
sed -i 's/ /\n/g' temp
sed -i '/^$/d' temp
sed -ri 'N; N; N; N; N; s/(.+)\n(.+)\n(.+)\n(.+)\n(.+)\n(.+)/\1 \2 \3 \4 \5 \6/g' temp

echo "  3  3" > $1.asc
cat temp >> $1.asc

rm temp
