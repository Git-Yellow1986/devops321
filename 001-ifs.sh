#!/bin/bash

# text="Banana Apple Orange"
# ne

# for word in $text
# do
# echo "word:$word"
# do

# ------------------
# text="Rajesh,Ramesh,Mahesh,Suresh"
# IFS=","

# for names in $text
# do
#     echo "Names $names"
# done

# -----------------------

# this not run

# colors="red|green|blue|yellow"
# OLDIFS=$IFS
# IFS="|"
# for color in $colors
# do
#   echo "Color: $color"
# done
# IFS=$OLDIFS


SOURCE_DIR=\home\ec2-user\logs

R="\e[31m" # color red
G="\e[32m" # color green
N="\e[0m"  # color normal
Y="\e[33m" # clor yellow


if [ -d $SOURCE_DIR ]
then 
    echo -e "$SOURCE_DIR  $G Exists.......$N"
else
    echo -e "$SOURCE_DIR $R does not Exist....$N"
    exit 1
fi

# Actual path 'find /home/ec2-user/logs -name "*.log" -mtime +4

# FILES=$(find /home/ec2-user/logs -name "*.log" -mtime +4)

FILES=$(find  /home/ec2-user/logs -name "*.log" -mtime +4)

    echo "Files: $FILES"

