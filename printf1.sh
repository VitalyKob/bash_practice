#!/bin/bash

printf "%-20s %-10s %-10s %-10s\n" "Username" "uid" "gid" "Name"
cut -d: -f1,3,4,5 /etc/passwd | while IFS=: read uname uid gid name
do
  printf "%-20s %-10s %-10s %-10s\n" "$uname" "$uid" "$gid" "$name"
done
