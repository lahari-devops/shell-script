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
    echo "Mysql installation success"
    exit 1
else
    echo "Mysql  is already installed"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    dnf install nginx -y
    if [ $? -ne 0 ]
    then 
        echo "Nginx installation is FAILED"
        exit 1
    else
        echo "Nginx installation is SUCCESS"
        exit 1
    fi
else
    echo "Nginx is already installed"
fi