*** Settings ***
# Library    SeleniumLibrary
Library    Selenium2Library

# Test environment
# Env : stg
# cid : 127 (Scenario v1)
# app : MesssageType (Web)

*** Test Cases ***
Chat Bot Behavior Check : Link button (_blank) open new tab and handle it
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/SYNALIO/    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=div.window-box
    Click Element    css=div.inner-box-img-box
    Wait Until Element Contains    css=#synalio-chat-message > div > div:nth-child(3) > span    FLOW
    Click Element    css=#synalio-chat-message > div > div:nth-child(3) > span
    Wait Until Element Is Visible    css=#synalio-chat-message > div:nth-child(3) > div:nth-child(5) > span
    Click Element    css=#synalio-chat-message > div:nth-child(3) > div:nth-child(5) > span
    Sleep    5
    # Save the window tabs index into var ${handles}
    ${handles}=    Get Window Handles
    # Switch tab by switch window and use handles index
    Switch Window    ${handles}[0]
    Sleep    5
    Switch Window    ${handles}[1]
    Location Should Be    https://www.google.com/search?q=coronavirus
    Close Window
    Sleep    5
    Close Browser
