#!/bin/bash

testAdd() {
    expectedLength=3
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testAddByIndex() {
    expectedLength=4
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    array[3]="Grape"
    echo ${array[@]}
    assertEquals "length" $expectedLength ${#array[@]}
}

testGet() {
    expected="Kiwifruit"
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${array[1]}
    assertEquals "get" $expected ${array[1]}
}

testDelete() {
    expectedLength=2
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    unset array[0]
    echo ${array[@]}
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
    for i in "${array[@]}"
    do
        echo $i
    done
}

testSet() {
    expected="Grape"
    declare -A array
    array=([Grape]=1 [Kiwifruit]=2 [Lemon]=3)
    echo ${array[@]}
    array[0]="Grape"
    echo ${array[@]}
    assertEquals "get" $expected ${array[0]}
}


# Load shunit2
. shunit2

