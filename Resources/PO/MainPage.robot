*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load
    go to  ${URL}
    Wait Until Page Contains  Your Amazon.com
