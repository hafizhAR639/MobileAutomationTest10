*** Settings ***
Resource        ../pageObjects/homePage/homePage.robot
Resource        ../pageObjects/loginPage/loginPage.robot
Resource        ../pageObjects/base.robot
Test Setup      Run Keywords    Open Flight Application    AND    Verify Home Screen Appears
Test Teardown   Close Flight Application


*** Test Cases ***

User Should Be Able To Login with Valid Data
    Click Sign In Button On Home Screen
      Verify Sign In Screen Appears
     Input Username        username= ${VALID_USERNAME}
     Input Password
     Click Sign In Button on Sign In Screen
User Should Not Be Able To Login with Valid Data
    Click Sign In Button On Home Screen
      Verify Sign In Screen Appears
     Input Username        username= ${INVALID_USERNAME} 
     Input Password
     Click Sign In Button on Sign In Screen