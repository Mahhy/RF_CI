*** Settings ***
Library     SeleniumLibrary


*** Keywords ***


Enter Credentials
    [Arguments]     ${URL}     ${UNAME}   ${UPWD}
    Go to   ${URL}
    input text      xpath://form[@id='loginForm']/div/input[1]  ${UNAME}
    sleep  1s
    input text      xpath://form[@id='loginForm']/div/input[2]  ${UPWD}
    sleep   5s


Click Login
    click element   xpath://form[@id='loginForm']/div/div/input
    sleep   5s

Verify Homepage
    capture page screenshot
    title should be     CRMPRO

Click Contacts Tab
    select frame    name:mainpanel
    sleep   1s
    click element   xpath://div[@id='navmenu']/ul//li/a[contains(text(),'Contacts')]
    sleep   1s
    capture page screenshot


