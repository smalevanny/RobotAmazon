*** Settings ***
Documentation  Some basic info about this suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Add Test Data
Test Setup  Start WebTest
Test Teardown  End WebTest
Suite Teardown  Clean Test Data

#Specific order - pybot -d Results --reporttitle "Amazon report" --logtitle "Amazon log" Tests
#Random order - pybot -d Results --reporttitle "Amazon report" --logtitle "Amazon log" --randomize all Tests
#Random order with Trace loglevel - pybot -d Results --reporttitle "Amazon report" --logtitle "Amazon log" --randomize all Tests
#pybot -d Results --reporttitle "Amazon report" --logtitle "Amazon log" --randomize all --loglevel trace -i Smoke Tests



*** Variables ***
${BROWSER} =            gc
${URL} =                http://www.amazon.com/
${SEARCH_TERM} =        Ferrari F40
${LOGIN_EMAIL} =        ivanov@ivan.com
${LOGIN_PASSWORD} =     ivanIVANOFF1987

*** Test Cases ***
Logged out user should be able to sign in
    [Tags]  Login
    AmazonApp.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}


Logged out user should be able to search products
    [Documentation]  Short test to check search
    [Tags]  Smoke
    AmazonApp.Search For Products


Logged out user should not be able to check out
    [Documentation]  Test to check that user hast to sugn in before check out
    [Tags]  Full
    AmazonApp.Search For Products
    AmazonApp.Select Product
    AmazonApp.Add Product To Cart
    AmazonApp.Begin Checkout
    AmazonApp.Verify That User Has To Sign In

