#!/bin/bash
array=("Apple" "Banana" "Cherry")
echo ${#array[*]}
echo ${array[*]}


testAdd(){
    array=("Apple" "Banana" "Cherry")
    array+=("Grape")
    array[1]="aaa"
	for i in "${array[@]}"
	do
	    echo $i
	done    
}

# Load shunit2
. shunit2

