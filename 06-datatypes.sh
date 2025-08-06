#!/bin/bash

NUMBER1=$1
NUMBER2=$2

TIMESTAMP=$(date)
echo "Script executed at: $TIMESTAMP"
SUM=$(($NUMBER1+$NUMBER2))

echo "SUM of $NUMBER1 and $NUMBER2 is: $SUM"

#Addition of 2 numbers

# N1=$1
# N2=$2

# NUM=$(($N1+$N2))
# echo " adding 2 numbers = $NUM "

# NUMBER1=$1
# NUMBER2=$2

# SUM=$(($NUMBER1+$NUMBER2))
# echo "Sum of 2 numbers: $SUM"
