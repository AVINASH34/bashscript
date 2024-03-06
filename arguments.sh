#!/bin/bash

Dir_Name=$1
File_Name=$2
File_content=$3

if [[ $# -ne 3 ]]
then
        echo " Please Enter Correct Number of Arguments "
        echo " Correct ussage example ./<scriptname> <Dir_name> <File_Name> <File_content> "
fi

if [[ ! -d ${Dir_Name} ]]
then
        mkdir ${Dir_Name} || { echo "Dir Failed to create" exit 1; }
fi

file_path=${Dir_Name}/${File_Name}

if [[ ! -f ${file_path} ]]
then
        touch ${file_path} || { echo "File Creation Failed" exit 1; }
fi

echo ${File_content} > ${file_path}