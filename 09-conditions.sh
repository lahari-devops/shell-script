#!/bin/bash

NUM=$1

if [ $NUM -gt 100 ]  
then 
    echo "The given number is greater than 100"
else
    echo "The given number is less than or equal to 100"
fi