#! /bin/bash

echo "Please enter first usable address in the subnet you would like to search"

read subFirst

echo "Now please enter the last usable octet in the subnet you would like to search"

read subLast

nmap -sT $subFirst-$subLast -p 1433 >/dev/null -oG AdvMSSSQL

echo "Now performing scan please wait..."

cat AdvMSSSQL | grep open > AdvMSSSQLOpen

cat AdvMSSSQLOpen

echo "Scan complete. Files AdvMSSSQL and AdvMSSSQLOpen generated."
