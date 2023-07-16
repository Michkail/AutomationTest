*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${EXECUTABLE PATH}    /Users/macbook/Desktop/BrowserDriver/chromedriver

*** Test Cases ***
Login Test
    Open Browser    http://hmm/    chrome
    Input Text   username   pimpinan1
    Click Button    Next
    Input Text   password   admin
    Click Button    Login
    Close Browser

Dashboard Test
    Open Browser    http://100.95.153.95:5000/    chrome

