#!/bin/bash

USERID=$(id -u)

CHECK_ROOT() {

    if [ $USERID -ne 0 ]
    then 
        echo " please run this script root privelege.."
        exit 1
    fi
}
CHECK_ROOT

for packege in $@
do 
    dnf list installed $package
if [ $? -ne 0 ]
then 
    echo "$package is not installed ... going to install it..."
    dnf install $package -y
else
    echo "$package is already installed, nothing to do.."
fi
done
