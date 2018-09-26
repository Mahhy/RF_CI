*** Settings ***
Documentation  This is FreeCRM - Robot Framework Practice Implementation
Resource    Resource/Common.robot
Resource    Resource/Freecrm1.robot
Suite Setup     Initialize Browser     ${BROWSER}
Suite Teardown      Teardown Browser

*** Variables ***
${BROWSER}  chrome
${URL}  https://www.freecrm.com/index.html
@{UNAME}    johnmau     Alanjarvis
${UPWD}     Asdfgh@123

*** Test Cases ***
Verify FreeCRM Login
    [Documentation]     This is login Test case
    [Tags]  Smoke

    Enter Credentials   ${URL}    ${UNAME[0]}    ${UPWD}
    Click Login
    Verify Homepage

Navigate to Contacts
    [Documentation]     This test is for Contact tab navigation from Homepage
    [Tags]  Sanity  Smoke
    Click Contacts Tab


*** Keywords ***
