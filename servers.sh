#!/bin/bash

if [ ! -f "$1" ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

echo "Server Status Report - $(date +%x)" > Final_servers_up.txt

while read -r server; do
  if ping -c 1 "$server" &> /dev/null; then
    echo "Server up and running: $server" >> Final_servers_up.txt
  else
    echo "Server unreachable: $server" >> Final_servers_up.txt
  fi
done < "$1"

cat Final_servers_up.txt
