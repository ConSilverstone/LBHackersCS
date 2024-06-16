#! /bin/bash

# Similar to how we handled looking for the TCP port that took interest in 3306, instead this one is designed for
# Microsoft's SQL Server Database, creating the full list and the open only list like before

echo "Start Microsoft SQL Server search..."

nmap -sT 192.168.1.0/24 -p 1433 >/dev/null -oG MSSQList

cat MSSQList | grep open > MSSQList2

echo "Task complete, search" 

cat MSSQList2
