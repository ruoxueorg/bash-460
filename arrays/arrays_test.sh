#!/bin/bash

testAdd () {
    local expectedLength=3
    local array=("Durian" "Guava" "Pitaya")
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testAddByIndex () {
    local expectedLength=4
    local array=("Durian" "Guava" "Pitaya")
    #array+=("Grape")
    array[3]="Grape"
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testGet () {
    local expected="Guava"
    local array=("Durian" "Guava" "Pitaya")
    echo ${array[1]}
    assertEquals "get" $expected ${array[1]}
}

testDelete () {
    local expectedLength=2
    local array=("Durian" "Guava" "Pitaya")
    unset array[0]
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testDeleteAll () {
    local expectedLength=0
    local array=("Durian" "Guava" "Pitaya")
    unset array
    echo ${!array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testLength () {
    local expectedLength=3
    local array=("Durian" "Guava" "Pitaya")
    echo ${#array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testLoop () {
    local array=("Durian" "Guava" "Pitaya")
    for i in "${array[@]}"
    do
        echo $i
    done
}

testSet () {
    local expected="Grape"
    local array=("Durian" "Guava" "Pitaya")
    echo ${array[@]}
    array[0]="Grape"
    echo ${array[@]}
    assertEquals "get" $expected ${array[0]}
}

testSlice () {
    local expectedLength=2
    local array=("Durian" "Guava" "Pitaya")
    local sliceArray=("${array[@]:1:2}")
    echo ${sliceArray[@]}
    assertEquals "length" $expectedLength ${#sliceArray[@]}
}


# Load shunit2
. shunit2

