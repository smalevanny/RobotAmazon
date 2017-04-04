*** Settings ***
Library  String

*** Variables ***

*** Test Cases ***
FOR Loop With Upper Bound Range
    [Documentation]  Starts from 0
    :FOR  ${index}  IN RANGE  5
    \  ${random_string} =  Generate Random String  ${index}
    \  LOG  ${random_string}

FOR Loop With Start and Finish Range
    [Documentation]  Starts from 1
    :FOR  ${index}  IN RANGE  1  4
    \  ${random_string} =  Generate Random String  ${index}
    \  LOG  ${random_string}

FOR Loop With Start and Finish Range with Step
    [Documentation]  Starts from 1
    :FOR  ${index}  IN RANGE  1  10  3
    \  ${random_string} =  Generate Random String  ${index}
    \  LOG  ${random_string}

FOR Loop With FOREACH style
    [Documentation]  Goes throug a list of items
    @{items} =  Create List  Item1  Item2  Item3
    :FOR  ${item}  IN  @{items}
    \  LOG  ${item}

FOR Loop With FOREACH style With Exit
    [Documentation]  Goes throug a list of items
    @{items} =  Create List  Item1  Item2  Item3  Item4
    :FOR  ${item}  IN  @{items}
    \  LOG  ${item}
    \  Run Keyword IF  "${item}" == "Item3"  Exit For Loop
    \  LOG  In the loop

    LOG  Out of the loop

Repeat Keyword Many Times
    Repeat Keyword  5  Repeate Me
    Repeat Keyword  2 times  Repeate Me
    Repeat Keyword  1 s  Repeate Me

*** Keywords ***
Repeate Me
    LOG  Repeatable action
