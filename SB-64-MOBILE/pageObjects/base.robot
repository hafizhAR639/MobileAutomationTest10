*** Settings ***
Library            AppiumLibrary

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      15.0
${DEVICE_NAME}           emulator-5554
${APP_PACKAGE}          com.example.myapplication
${APP_ACTIVITY}         com.example.myapplication.MainActivity
${AUTOMATION_NAME}      uiautomator2


*** Keywords ***
Open Flight Application
    AppiumLibrary.Open Application    remote_url=http://127.0.0.1:4723
    ...                 platformName=Android
    ...                 platformVersion=15.0
    ...                 deviceName=emulator-5554
    ...                 appPackage=com.example.myapplication
    ...                 appActivity=com.example.myapplication.MainActivity
    ...                 automationName=uiautomator2
Close Flight Application
    Close Application