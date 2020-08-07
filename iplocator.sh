#!/bin/bash
figlet "iplocator"
colour="\e[33m"
echo -e "$colour"
echo -e "1 for ip details \n2 for geolocation"
echo  "choose option"
read ch
if [ $ch -eq 1 ]
then
	echo "Ip Detail's are starting..."
	sleep 2
	echo "Enter Target Ip"
	read ip
	curl -s https://ipinfo.io/$ip
elif [ $ch -eq 2 ]
then
	echo "Geolocation starting.."
	sleep 2
	echo "Enter Ip to Know the exact location"
	read iploc
	curl -s https://ipvigilante.com/$iploc  
else
	echo "Invalid Option  From Try Valid Option's !"
fi
