#!/bin/bash

testHelloWorld () {
    echo "Hello World"
}

function testBashWorld {
    echo "Bash World"
}

name="Ruoxue"
amount=10
localVariables () {
    local name="RX"
    amount=20
    echo "inside: name: $name, amount: $amount"
}

testLocalVariables () {
    echo "before: name: $name, amount: $amount"
    localVariables
    echo "after: name: $name, amount: $amount"
    assertEquals "name" "Ruoxue" $name
    assertEquals "name" 20 $amount
}


returnValue () {
    return 100
}

testReturnValue () {
    local expected=100
    returnValue
    local result=$?
    echo $result
    assertEquals "result" $expected $result
}


returnValueStdout () {
    local result="Bash"
    echo $result
}

testReturnValueStdout () {
    local expected="Bash"
    local result="$(returnValueStdout)"
    echo $result
    assertEquals "result" $expected $result
}

add () {
    local result=$(($1+$2))
    echo $result
}

testAdd () {
    local expected=3
    local result="$(add 1 2)"
    echo $result
    assertEquals "result" $expected $result
}

# Load shunit2
. shunit2
