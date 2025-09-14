#!/bin/bash

LOGS_FOLDER="var/log/shell-script"
USERID=$(id -u)

R="\e[31m" # color red
G="\e[32m" # color green
N="\e[0m"  # color normal

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then 
        echo "Please run this script with root priveleges"
        exit 1
    fi
}

VALIDATE() {
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is ...$2 FAILED $N"
        exit 1
    else
        echo -e "$2 is ...$2 SUCCESS $N"
    fi
}

CHECK_ROOT

# sh 15-loops.sh git mysql nginx
for package in $@ # $@ refers to all arguments passed to it
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then 
        echo "$package is not installed, goint to install it...."
        dnf install $package -y
        VALIDATE $? "installing $package"
    else
        echo "$package is aleady installed..nothing to do"
    fi
done
