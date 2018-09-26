*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Initialize Browser
    [Arguments]     ${BROWSER}
    open browser    about:blank   ${BROWSER}
    maximize browser window

Teardown Browser
    close browser
