*** Settings ***
Library  Selenium2Library

*** Variables ***
${SEARCHRESULTS_FIRSTRESULT_LINK} =  css=#result_0 a.s-access-detail-page

*** Keywords ***
Select Product
    Click Link  ${SEARCHRESULTS_FIRSTRESULT_LINK}

Verify Search Completed
    Wait Until Page Contains  results