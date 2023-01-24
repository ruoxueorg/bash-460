#!/bin/bash

testHelloWorld () {
    echo "Hello World"
}

function testBashWorld {
    echo "Bash World"
}

varA="A"
varB="B"
localVariables () {
    local varA="C"
    varB="D"
    echo "inside: varA: $varA, varB: $varB"
}

testLocalVariables () {
    echo "before: varA: $varA, varB: $varB"
    localVariables
    echo "after: varA: $varA, varB: $varB"
    assertEquals "varA" "A" $varA
    assertEquals "varB" "D" $varB
}


returnValue () {
    return 100
}

testReturnValue () {
    local expected=100
    returnValue
    local result=$?
    echo "result: $result"
    assertEquals "result" $expected $result
}


returnValueStdout () {
    local result="Bash"
    echo $result
}

testReturnValueStdout () {
    local expected="Bash"
    local result="$(returnValueStdout)"
    echo "result: $result"
    assertEquals "result" $expected $result
}

add () {
    local result=$(($1+$2))
    echo $result
}

testAdd () {
    local expected=3
    local result="$(add 1 2)"
    echo "result: $result"
    assertEquals "result" $expected $result
}

# Load shunit2
. shunit2
