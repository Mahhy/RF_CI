*** Settings ***
Library    String
Library    Collections

*** Variables ***


*** Test Cases ***
FOR LOOP T
    #${delCount}=    Set Variable    0
    :FOR    ${loopIndex}    IN RANGE    0    8
    \    run keyword if   ${loopIndex}==3   continue for loop
    \    Log    ${loopIndex}
    \    ${delCount}=    Run Keyword If    ${loopIndex} == 3    Evaluate    ${loopIndex} + ${delCount}
    \    ...    ELSE IF    ${loopIndex} == 6    Evaluate    ${delCount} + 6
    \    ...    ELSE   SLEEP  1s

*** Keywords ***
