*** Settings ***
Resource        ../pageObjects/base2.robot
Resource        ../pageObjects/homePage/homePage.robot
Resource        ../pageObjects/searchPage/searchPage.robot
Resource        ../pageObjects/loginPage/loginPage.robot
Test Setup      Run Keywords    Open Flight Application    
...             AND    Login
Test Teardown   Close Flight Application

*** Test Cases ***
User Should Be Found The Flight Number With Valid The Flight Number
    Verify Home Screen Appears
    Click Search Button On Home Screen
    Verify Search Screen Appears
    Input Valid The Flight Number
    Click Search Button On A Search Screen
    Verify Flight Details Screen Appears
    Verify the Flight Number Matches The Searched Flight Number
    Close Flight Application

