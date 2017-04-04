*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOPSEARCH_SEARCH_BAR} =       id=twotabsearchtextbox
${TOPSEARCH_SEARCH_BUTTON} =    xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search For Products
    Input Text  ${TOPSEARCH_SEARCH_BAR}  ${SEARCH_TERM}
    Submit
    [Return]  ${SEARCH_TERM}

Submit
    Click Button  ${TOPSEARCH_SEARCH_BUTTON}