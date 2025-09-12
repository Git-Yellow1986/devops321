#!/bin/bash
#Array

FRUITS=("APPLE" "ORANGE" "MANGO")

echo " First is :${FRUITS[1]}"
echo " Second is :${FRUITS[0]}"
echo " Third is : ${FRUITS[2]}"
echo " All : ${FRUITS[@]}" # @ is for all