#!/bin/bash

oneTimeSetUp(){
    echo "oneTimeSetUp"
}

oneTimeTearDown(){
    echo "oneTimeTearDown"
    echo "testsTotal: ${__shunit_testsTotal}"
    echo "testsPassed: ${__shunit_testsPassed}"
    echo "testsFailed: ${__shunit_testsFailed}"
    echo "assertsTotal: ${__shunit_assertsTotal}"
    echo "assertsPassed: ${__shunit_assertsPassed}"
    echo "assertsFailed: ${__shunit_assertsFailed}"
    echo "assertsSkipped: ${__shunit_assertsSkipped}" 
}

setUp(){
    echo "setUp"
}

tearDown(){
    echo "tearDown"
}

helloWorld(){
    echo "Hello World"
}

testHelloWorld(){
    assertEquals "string" "$(helloWorld)"  "Hello World"
}


# Load shunit2
. shunit2
