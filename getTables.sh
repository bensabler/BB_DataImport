#! /bin/bash

# This script iterates all .csv extension files in the current
# directory and parses for field name and length. Output 
# generated is a SQL statement for creating tables and fields.

# Initialize variables for current directory, awk script path
# and destination of the output.
dir=$(basename "$PWD");
flds="/home/bensabler/Desktop/DBM Systems Intern/Scripts/flds.awk";
dest="/home/bensabler/Desktop/DBM Systems Intern/baseballdatabank-2022.2/createTables/${dir}Tables.txt";

# Creates a text file prepended with the name of the current 
# directory and sent to a tables directory.
touch "${dest}";

# Loop exit condition is the parsing of all .csv files.
for i in *.csv;
do
	# Initialize variable and store the printed value of
	# the current file name.
	fn=$(echo "$i" | awk -F'.' '{print $1}');

	# Opens the .csv file of the current loop index iteration
	# and pipes the output to the awk command. The awk command uses
	# a comma as a field delimiter and takes the $flds variable as
	# the script source. Two additional variables are initialized and
	# store current directory and file name data which are then passed
	# to the awk script.
	cat "$i" | awk -F',' -f "$flds" -v "sname=$dir" -v "tname=$fn";

	# After the .csv file is read, an additional line is written to 
	# complete an SQL statement.
	echo -e ")\ngo";

# When the loop ends, it is redirected to a directory containing
# other relevant table files.
done > "$dest"
