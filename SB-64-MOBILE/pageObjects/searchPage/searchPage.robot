*** Settings ***
Library        AppiumLibrary
Resource       ../homePage/homePage.robot
Variables      ../loginPage/login-page-locators.yaml

*** Variables ***
${VALID_ID}    DA935
${INVALID_ID}  AD956

*** Keywords ***
Verify Search Screen Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/enterFlight"]
Input Valid The Flight Number
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    text=${VALID_ID}
Click Search Button On A Search Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
Verify Flight Details Screen Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@text="Schedule"]
Verify the Flight Number Matches The Searched Flight Number
    Wait Until Page Contains    text= DA935   