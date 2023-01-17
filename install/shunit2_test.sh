#!/bin/bash

oneTimeSetUp(){
    echo "oneTimeSetUp"
}

oneTimeTearDown(){
    echo "oneTimeTearDown"
    echo "${__shunit_testsTotal}"
    echo "${__shunit_testsPassed}"
    echo "${__shunit_testsFailed}"
    echo "${__shunit_assertsTotal}"
    echo "${__shunit_assertsPassed}"
    echo "${__shunit_assertsFailed}"
    echo "${__shunit_assertsSkipped}" 
}

setUp(){
    echo "setUp"
}

tearDown(){
    echo "tearDown"
}

. shunit2