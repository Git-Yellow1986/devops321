#!/bin/bash
# Note: Regarding LOGS - both Terminal and log_files
LOGS_FOLDER="/var/log/shell-script"
#echo redirector.sh | cut -d "." -f1 --> on command prompt
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/SCRIPT_NAME-$TIME_STAMP.log"
mkdir -p LOGS_FOLDER

USERID=$(id -u)
R="\e[31m" # color red
G="\e[32m" # color green
N="\e[0m"  # color normal
Y="\e[33m" # clor yellow

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then 
        echo -e "$R Please run this script with root priveleges $N" | tee -a $LOG_FILE
        exit 1
    fi
}

USAGE() {
    echo "$R USAGE ::$N sudo sh 16-redirector.sh package1,package2....."
}

VALIDATE() {
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is ...$2 FAILED $N" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "$2 is ...$2 SUCCESS $N" | tee -a $LOG_FILE
    fi
}

echo "script started excuting at: $(date)" | tee -a $LOG_FILE # when it was started script to reference

CHECK_ROOT
if [ $# -ne 0 ]
then 
    USAGE
fi

# sh 15-loops.sh git mysql nginx
for package in $@ # $@ refers to all arguments passed to it
do
    dnf list installed $package | tee -a $LOG_FILE
    if [ $? -ne 0 ]
    then 
        echo "$package is not installed, goint to install it...."
        dnf install $package -y | tee -a $LOG_FILE
        VALIDATE $? "installing $package"
    else
        echo -e "$package is aleady $R installed..nothing to do $N"
    fi
done
