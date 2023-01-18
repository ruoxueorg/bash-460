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

testDelete() {
    expectedSize=2
    array=("Apple" "Banana" "Cherry")
    unset array[0]
    echo ${array[@]}
    assertEquals "length" $expectedSize ${#array[@]}
}

testLength() {
    expectedSize=3
    array=("Apple" "Banana" "Cherry")
    echo ${#array[@]}
    assertEquals "length" $expectedSize ${#array[@]}
}

testLoop() {
    array=("Apple" "Banana" "Cherry")
    for i in "${array[@]}"
    do
        echo $i
    done
}

testSet() {
    expected="Grape"
    array=("Apple" "Banana" "Cherry")
    echo ${array[@]}
    array[0]="Grape"
    echo ${array[@]}
    assertEquals "get" $expected ${array[0]}
}


# Load shunit2
. shunit2

