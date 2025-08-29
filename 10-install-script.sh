#!/bin/bash

USERID=$(id -u) #Root users id will be 0 if not the user is other than root user

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: You dont have sudo permission"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installing Mysql...FAILURE"
        exit 1
    else
        echo "Installing Mysql...SUCCESS"
    fi
else
    echo "Mysql  is already installed"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    dnf install nginxx -y
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