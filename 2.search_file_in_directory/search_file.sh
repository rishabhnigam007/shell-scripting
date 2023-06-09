#!/bin/bash

source_folder="C:/Users/Rishabh/Desktop/reports/files"

destination_folder="C:/Users/Rishabh/Desktop/reports/files/assigned"

file_path="C:/Users/Rishabh/Desktop/reports/1.making_comma_file/comma_file.txt"

file_names=$(cat "$file_path" | tr -s '\n' ',')

IFS=',' read -ra files_array <<< "$file_names"

echo "Searching files"

for file_name in "${files_array[@]}"; do
    matching_files=$(find "$source_folder" -maxdepth 1 -type f -name "*$file_name*")
    echo "$file_name"
    if [ -z "$matching_files" ]; then
        echo "$file_name" >> "$destination_folder/missing_files.txt"
    else
        for file in $matching_files; do
            cp "$file" "$destination_folder"
            echo "$file"
        done
    fi
done

echo "Done!"

cmd /k