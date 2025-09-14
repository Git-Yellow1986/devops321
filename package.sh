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
    
    if [ $1 -ne 0 ]
    then 
        echo "$2 is ....$2 Failed"
        exit 1
    else
        echo "$2 is ....$ 2Success"
    fi

else
    echo "$package is already installed, nothing to do.."
fi
done
