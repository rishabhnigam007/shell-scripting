#!/bin/bash

input_file="C:/Users/Rishabh/Desktop/reports/1.making_comma_file/file.txt"

output_file="C:/Users/Rishabh/Desktop/reports/1.making_comma_file/comma_file.txt"

combined_line=$(awk '{printf("%s%s", $O, (NR==0 ? "" : ","))}' "$input_file")

echo "$combined_line" > "$output_file"

echo "comma separated file is completed !!"

cmd /k