#!/bin/bash

dir_name=$1
[ -d "$dir_name" ]
dir_name_rc=$?

if [ "$dir_name_rc" -eq 0 ]
then
        for files in "$dir_name"/[^.]*
        do
                file_name=$(basename "$files")
                echo "$file_name"
        done
else
        echo " No Directory Found"
fi