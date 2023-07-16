*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Safari
${EXECUTABLE PATH}    /Users/macbook/Desktop/BrowserDriver/chromedriver

*** Test Cases ***
Login Test
    Open Browser    http://disini/login    chrome
    Input Text   username   piter
    Click Button    Next
    Input Text   password   1234
    Click Button    Login
    Close Browser


