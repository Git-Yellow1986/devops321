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

color="white|green|bule|red|yellow"

OLDIFS=$IFS

IFS="|"
for colors in $clor
do 
    echo "colors $colors"
done
IFS=$OLDIFS