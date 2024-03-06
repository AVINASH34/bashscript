#!/bin/bash

# Declaration of vaariable to catch the file location

file_loc=$1
[ -f "$file_loc" ]
file_loc_rc=$?

if [ file_loc_rc==0 ]
then
        echo " The File You Choosen Has A Size Of "
        stat -c "%s bytes" "$file_loc"
else
        echo " NO FILE FOUND "
fi