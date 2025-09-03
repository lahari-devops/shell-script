#! /bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5    # Real projects will monitor for 70% or 80%
while read -r line
do 
    UAGAE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk -F " " '{print $NF}')
    echo "usage : $USAGE and partition : $PARTITION
done <<< $DISK_USAGE



