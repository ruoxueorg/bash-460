#!/bin/bash
array=("Apple" "Banana" "Cherry")
echo ${#array[@]}


testAdd(){
    array=("Apple" "Banana" "Cherry")
	for i in "${array[@]}"
	do
	    echo $i
	done    
}

# Load shunit2
. shunit2

