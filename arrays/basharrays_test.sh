#!/bin/bash

testAdd(){
	expectedSize = 3
    array=("Apple" "Banana" "Cherry")
    echo ${array[*]}
    assertEquals "Equals" ${#array[*]} expectedSize
    
}

# Load shunit2
. shunit2

