#! /bin/bash

## A more advanced nmap SQL script that allows for the user to input the addresses they want to scan ##

## Take user input for the earliest address they want scanned, read creates variable##
echo "Enter the starting IP address : "
read FirstIP

## Take user input for the last address they want scanned, we only need to know last octect ##
echo "Enter the last octet of the last IP address : "
read LastOctectIP

## Take the port the user wants scanned ##
echo "Enter the port number you want to scan for : "
read port

## run the data through nmap ##
nmap -sT $FirstIP-$LastOctectIP -p $port >/dev/null -oG AdvancedSQLscan

## Create the files ##
cat AdvancedSQLscan | grep open > AdvancedSQLscan2
## Create a list of vulnerable IPs ## 
cat AdvancedSQLscan2
