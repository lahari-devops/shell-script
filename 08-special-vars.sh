#!/bin/bash

NUM1=$1
NUM2=$2
NUM3=$3

echo "Number of variables passed : $#"
echo "All the variables passed : $@"
echo "Present working directory is : $PWD"
echo "Which user is running this script : $USER"
echo "Home directory of current user : $HOME"
echo "Process id of current script is : $$"
sleep 100 &
echo "process id of previous command running in background is : $!"
echo "Exit status of previous command is : $?"
