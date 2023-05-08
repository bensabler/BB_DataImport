#! /bin/bash

# This script iterates all .csv extension files and parses
# for field name and length. Output generated is a SQL statememt.

dir=$(basename "$PWD");
flds="/home/bensabler/Documents/csv_info.awk";
dest="${dir}Tables.txt";
touch "${dest}";
for i in *.csv;
do
	fn=$(echo $i | awk -F'.' '{print $1}');
	cat $i | awk -F',' -f $flds -v "sname=$dir" -v "tname=$fn";
	echo -e ")\ngo";
done > "$dest"