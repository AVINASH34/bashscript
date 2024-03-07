#!/bin/bash

if [ ! -f "$1" ];
then
    echo " GIVEN ITEM WAS A NOT A FILE "
fi
while read serverlist;
do
   ping -c1 "$serverlist" && echo "serverup $serverlist" 
done