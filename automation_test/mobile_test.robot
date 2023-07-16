*** Settings ***
Library     AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}  UIAutomator2
${ANDROID_APP}              ${CUR_DIR}
${ANDROID_PLATFORM_NAME}    Android
${ANDROID_PLATFORM_VERSION} %{ANDROID_PLATFORM_VERSION=11}

*** Test Cases ***
Should send keys to search box and then check the value
    Open Test Application
    Input Search    Query Hello World!
    Submit Search
    Search Query Should Be Matching  Hello World!
