*** Settings ***
Library          AppiumLibrary
Resource    ../homePage/homePage.robot
Variables        login-page-locators.yaml
*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${INVALID_USERNAME}    johndoe@ngendigital.com

*** Keywords ***
Verify Sign In Screen Appears
     Wait Until Element Is Visible    locator=${username_input}       
 
Input Username
    [Arguments]    ${username}
    Input Text    locator=${username_input}        text= ${VALID_USERNAME}

Input Password
    Input Text    locator=${password_input}    text= abc123

Click Sign In Button on Sign In Screen
    AppiumLibrary.Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
Login
    [Arguments]    ${username}=${VALID_USERNAME}
    Verify Sign In Screen Appears
    Input Username    ${username}
    Input Password
    Click Sign In Button on Sign In Screen