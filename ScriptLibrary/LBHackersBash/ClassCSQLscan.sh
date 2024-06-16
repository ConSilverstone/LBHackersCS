#! /bin/bash

# This script is designed to find hosts with MySQL installed

## run nmap look at TCP ports (-sT) under our whole address using subnet address
## -p for one specific port 3306 (SQL) and output it to the null space to hide the data, call it MySQLscan
nmap -sT 192.168.1.0/24 -p 3306 >/dev/null -oG LocalSQLscan 

## In MySQLscan use grep to look for the keyword open and output that line into a new file (MySQLscan2)
cat LocalSQLscan | grep open > LocalSQLscan2

## View MySQLscan2
cat LocalSQLscan2
