#! /bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5    # Real projects will monitor for 70% or 80%
MSG=""

while read -r line
do 
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk -F " " '{print $NF}')
    # echo "usage : $USAGE and partition : $PARTITION"
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then 
        MSG+="High disk usage on partition: $PARTITION with usage: $USAGE \n "
    fi
done <<< $DISK_USAGE

echo -e "Messege : $MSG"

echo "$MSG" | mutt -s "High disk Usage" laharidevsecops@gmail.com