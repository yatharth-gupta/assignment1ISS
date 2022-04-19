#!/bin/bash
echo " enter numbers(example:1 2 3 4 5): "
read var
IFS=' ' read -ra arr <<< "$var"
echo "original array is: ${arr[*]}"
n=${#arr[@]}
count=1
for ((i = 0; i<$n-1; i++))
do
    count=0
    for((j = 0; j<$n-$i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
            count=1
        fi
    done
    if [[ $count -eq 0 ]]; then
    break
    fi
done

echo "Array in sorted order : ${arr[*]}"