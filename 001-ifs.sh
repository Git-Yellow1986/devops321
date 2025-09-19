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

if [ -d $success ]
then 
    echo "Directory is exist......."
else
    echo "directory does not exist...."
done
