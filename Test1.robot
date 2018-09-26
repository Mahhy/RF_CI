*** Settings ***
Documentation  MyFirstRobot
Library     SeleniumLibrary
Library     add.py
Library     TestClass.TestClass1
Library     TestClass.TestClass2

#*** variables ***

*** Test Cases ***
Open Google Webpage on Chrome Browser
    [Documentation]  First Test Case
    [Tags]  Smoke Test
    open browser   https://www.oath.com     headlessfirefox
    log  title
    #title should be  Gmail  "Title doesnot match"
    capture page screenshot  name='ABC.jpg'
    ${a}=   add1  4   5
    log     ${a}
    Method1c1  Wewill   Win
    Method1c2  Robot    Automation
    time_now
    @{links}=   GET ALL LINKS
    close browser



#*** keywords ***

