*** Settings ***
Documentation  Some basic info about this suite
Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonAppGerkin.robot
Suite Setup  Add Test Data
Test Setup  Start WebTest
Test Teardown  End WebTest
Suite Teardown  Clean Test Data


*** Variables ***
${BROWSER} =  gc
${URL} =  http://www.amazon.com/
${SEARCH_TERM} =  Ferrari F50

*** Test Cases ***

Log out user should be able to search products
    [Documentation]  Short test to check search
    [Tags]  Smoke
    Given user is not logged in
    When user searches for products
    Then search results contain relevant products


Log out user should not be able to check out
    [Documentation]  Test to check that user hast to sugn in before check out
    [Tags]  Full
    Given user is not logged in
    And user searches for products
    And search results contain relevant products
    And user selects product
    And correct product page loads
    And user adds product to his cart
    And the product is present in cart
    When user attempts to check out
    Then user is required to sign in


