#!/bin/bash

USERID=$(id -u)

CHECK_ROOT() {

    if [ $USERID -ne 0 ]
    then 
        echo " please run this script root privelege.."
        exit 1
    fi
}
VALIDATE() {
if [ $1 -ne 0 ]
    then 
        echo "$2 is ....$2 Failed"
        exit 1
    else
        echo "$2 is ....$2 Success"
    fi
}

CHECK_ROOT

for package in $@
do 
    dnf list installed $package
if [ $? -ne 0 ]
then 
    echo "$package is not installed ... going to install it..."
    dnf install $package -y
  
  VALIDATE $?  "installing $package"
    
     
else
    echo "$package is already installed, nothing to do.."
fi
done
