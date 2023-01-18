#!/bin/bash

testAdd() {
    expectedLength=3
    array=("Apple" "Banana" "Cherry")
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testAddByIndex() {
    expectedLength=4
    array=("Apple" "Banana" "Cherry")
    #array+=("Grape")
    array[3]="Grape"
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testGet() {
    expected="Banana"
    array=("Apple" "Banana" "Cherry")
    echo ${array[@]}
    assertEquals "get" $expected ${array[1]}
}

testDelete() {
    expectedLength=2
    array=("Apple" "Banana" "Cherry")
    unset array[0]
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testLength() {
    expectedLength=3
    array=("Apple" "Banana" "Cherry")
    echo ${#array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
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

