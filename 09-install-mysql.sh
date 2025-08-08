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
    echo "Mysql is installation success"
    exit 1
else
    echo "Mysql  is already installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install gittt -y
    echo "Git is installation sucess"
    exit 1
else
    echo "Git is already installed"
fi