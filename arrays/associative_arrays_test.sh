#!/bin/bash

testAdd() {
    expectedLength=3
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${!array[@]}
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testAddByIndex() {
    expectedLength=4
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    array[Mango]=4
    echo ${!array[@]}
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testGet() {
    expected=2
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${array[Kiwifruit]}
    assertEquals "get" $expected ${array[Kiwifruit]}
}

testDelete() {
    expectedLength=2
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    unset array[Grape]
    echo ${!array[@]}
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testDeleteAll() {
    expectedLength=0
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    unset array
    echo ${!array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testLength() {
    expectedLength=3
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${#array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testLoop() {
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    for i in "${!array[@]}"
    do
        echo $i
    done
}

testSet() {
    expected=10
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${!array[@]}
    echo ${array[@]}
    array[Grape]=10
    echo ${!array[@]}
    echo ${array[@]}
    assertEquals "get" $expected ${array[Grape]}
}

testSlice() {
    expectedLength=2
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    slice_array=("${array[@]:1:2}")
    echo ${slice_array[@]}
    assertEquals "length" $expectedLength ${#slice_array[@]}
}

# Load shunit2
. shunit2

