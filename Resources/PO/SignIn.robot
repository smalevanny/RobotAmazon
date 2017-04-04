*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Sign in

Login
    [Arguments]  ${email}  ${password}
    Fill "Email" Field  ${email}
    Fill "Password" Field  ${password}
    Click "Sign In" Button

Fill "Email" Field
    [Arguments]  ${email}
    Log  Filling "Email" Field with ${email}

Fill "Password" Field
    [Arguments]  ${password}
    Log  Filling "Email" Field with ${password}


Click "Sign In" Button
    # TODO: Test that functionality
    Log  Clicking "Sign In" button

