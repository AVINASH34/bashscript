#!/bin/bash

if [ ! -f "$1"];
then
    echo " GIVEN ITEM WAS A NOT A FILE "
fi
while read server;
do
   ping -c1 "$server" && echo "serverup $server" 
done