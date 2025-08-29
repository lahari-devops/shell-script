#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2....$R FAILURE"
        exit 1
    else    
        echo -e "$2....$G SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "Error::You must have sudo access to execute this script"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then 
    dnf install mysql -y
    VALIDATE $? "Installing mysql"
else
    echo -e "Mysql is already $Y INSTALLED"
fi


dnf list installed git
if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $? "Installing git"
else
    echo -e "Git is already $Y INSTALLED"
fi