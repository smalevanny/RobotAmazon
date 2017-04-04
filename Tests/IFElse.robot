*** Settings ***
#pybot -d Results --reporttitle "IF_ELSE_If report" --logtitle "IF_ELSE_IF log"  Tests/IFElse.robot

*** Variables ***
${VARIABLE} =  100

*** Test Cases ***
Example IF_ElseIf_Else
    Run Keyword IF  ${VARIABLE} > 100   Keyword 1
    ...  ELSE IF  ${VARIABLE} == 10     Keyword 2
    ...  ELSE                           Keyword 3


*** Keywords ***
Keyword 1
    log  Performing Keyword 1

Keyword 2
    log  Performing Keyword 2

Keyword 3
    log  Performing Keyword 3