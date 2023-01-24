#!/bin/bash

testAdd () {
    local expectedLength=3
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${!array[@]}
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testAddByIndex () {
    local expectedLength=4
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    array[Mango]=4
    echo ${!array[@]}
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testGet () {
    local expected=2
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${array[Kiwifruit]}
    assertEquals "get" $expected ${array[Kiwifruit]}
}

testDelete () {
    local expectedLength=2
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    unset array[Grape]
    echo ${!array[@]}
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testDeleteAll () {
    local expectedLength=0
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    unset array
    echo ${!array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testLength () {
    local expectedLength=3
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${#array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testLoop () {
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    for i in "${!array[@]}"
    do
        echo $i
    done
}

testSet () {
    local expected=10
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${!array[@]}
    echo ${array[@]}
    array[Grape]=10
    echo ${!array[@]}
    echo ${array[@]}
    assertEquals "get" $expected ${array[Grape]}
}

testSlice () {
    local expectedLength=2
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    local sliceArray=("${array[@]:1:2}")
    echo ${sliceArray[@]}
    assertEquals "length" $expectedLength ${#sliceArray[@]}
}

# Load shunit2
. shunit2

