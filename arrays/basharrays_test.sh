#!/bin/bash

testAdd() {
    expectedSize=3
    array=("Apple" "Banana" "Cherry")
    echo ${array[@]}
    assertEquals "length" $expectedSize ${#array[@]}
}

testAddByIndex() {
    expectedSize=4
    array=("Apple" "Banana" "Cherry")
    #array+=("Grape")
    array[3]="Grape"
    echo ${array[@]}
    assertEquals "length" $expectedSize ${#array[@]}
}

testGet() {
    expected="Banana"
    array=("Apple" "Banana" "Cherry")
    echo ${array[@]}
    assertEquals "get" $expected ${array[1]}
}


# Load shunit2
. shunit2

