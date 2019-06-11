#!/bin/bash
mask=32

function valid_ip()
{
    local  ip=$1
    local  stat=1

    if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        OIFS=$IFS
        IFS='.'
        ip=($ip)
        IFS=$OIFS
        [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 \
            && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
        stat=$?
    fi
    return $stat
}


if [[ -z $1 ]]; then 
    echo "Enter IP:"
    read ip
else 
    ip=$1
fi 

if [[ -n $2 ]]; then  
    mask=$2
fi 
if valid_ip $ip; then
	printf "iptables -t nat -I PREROUTING -s $ip/$mask -j ACCEPT\niptables -I FORWARD -s $ip/$mask -j ACCEPT" 
else
	echo "Usage: deppenregel <IP> <MASK> or deppenregel <IP> without mask"
fi


