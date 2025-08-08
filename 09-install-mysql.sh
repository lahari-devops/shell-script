#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: You dont have sudo permission"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    echo "Mysql is installed"
    exit 1
else
    echo "Mysql  is already installed"
fi