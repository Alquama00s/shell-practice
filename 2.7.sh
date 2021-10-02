#!/bin/sh
clear
array=()
line=""


while true

do
    
    read -d'' -s -n 1 char
    #clear
    printf "hfbyh--$array"
    for i in "${array[@]}"
    do
        printf "$i\n"
    done
    printf "\n"
    printf "$line" 
    if [[ "$char" = $'\e' ]];
    then
        break
    elif [[ "$char" = $'\x0a' ]];
    then
        array+=("$line")
        printf "enter--$array"
        line=""
    elif [[ "$char" = $'\177' ]]; #backspace
    then
        line="${line%}"
        
    else
        line=$(echo $line$char)
    fi
    
done