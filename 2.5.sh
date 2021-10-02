#!/bin/sh
getCreationTime(){
    disk=($(sudo df .))
    disk=${disk[7]}
    filename=$1
    hash=($(ls -i $filename))
    hash=${hash[0]}
    result=($(sudo debugfs -R 'stat <'$hash'>' $disk ))
    time=$(echo ${result[63]} ${result[62]} ${result[65]} ${result[61]} ${result[64]})
    printf "$time"
}
fileList=($(ls))
sl=0;
for i in "${fileList[@]}"
    do 
        sl=$(($sl + 1))
        result=$(echo $result"$sl. $i ---- $(getCreationTime $i) \n") 
        
    done
printf "$result"