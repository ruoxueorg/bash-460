#!/bin/bash

testAdd () {
    local expectedLength=3
    local array=("Apple" "Banana" "Cherry")
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testAddByIndex () {
    local expectedLength=4
    local array=("Apple" "Banana" "Cherry")
    #array+=("Grape")
    array[3]="Grape"
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testGet () {
    local expected="Banana"
    local array=("Apple" "Banana" "Cherry")
    echo ${array[1]}
    assertEquals "get" $expected ${array[1]}
}

testDelete () {
    local expectedLength=2
    local array=("Apple" "Banana" "Cherry")
    unset array[0]
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testDeleteAll () {
    local expectedLength=0
    local array=("Apple" "Banana" "Cherry")
    unset array
    echo ${!array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testLength () {
    local expectedLength=3
    local array=("Apple" "Banana" "Cherry")
    echo ${#array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testLoop () {
    local array=("Apple" "Banana" "Cherry")
    for i in "${array[@]}"
    do
        echo $i
    done
}

testSet () {
    local expected="Grape"
    local array=("Apple" "Banana" "Cherry")
    echo ${array[@]}
    array[0]="Grape"
    echo ${array[@]}
    assertEquals "get" $expected ${array[0]}
}

testSlice() {
    local expectedLength=2
    local array=("Apple" "Banana" "Cherry")
    local slice_array=("${array[@]:1:2}")
    echo ${slice_array[@]}
    assertEquals "length" $expectedLength ${#slice_array[@]}
}


# Load shunit2
. shunit2

