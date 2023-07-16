*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Safari
${EXECUTABLE PATH}    /Users/macbook/Desktop/BrowserDriver/chromedriver

*** Test Cases ***
Login Test
    Open Browser    http://hmm/auth    chrome
    Input Text   username-form   desktop19
    Input Text   password-form   123
    Click Button    Login
    Close Browser

Dashboard Test
    Open Browser    http://hmm/auth    chrome
    Input Text   username-form   desktop19
    Input Text   //*[@id="operations-chat-send_message_api_chat_message_post"]/div[2]/div/div[1]/div[2]/div/table/tbody/tr[5]/td[1]   123
    Click Button    Login
    Click Button    Ok

    Close Browser
