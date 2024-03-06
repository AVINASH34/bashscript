#!/bin/bash

read -p " Enter your file locaton to read the content : " file_loc

test -f ${file_loc}

file_loc_rc=$?

if [ ${file_loc_rc} == 0 ]
then
        echo " ${file_loc} found "
        cat ${file_loc}
else
        echo " ${file_loc} not found "
fi
