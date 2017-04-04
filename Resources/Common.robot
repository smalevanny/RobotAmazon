*** Settings ***
Library  Selenium2Library

*** Keywords ***
Start WebTest
    open browser  about:blank  ${BROWSER}
    maximize browser window

End WebTest
    close browser

Add Test Data
    Log  Adding Test Data

Clean Test Data
    Log  Cleaning Test Data