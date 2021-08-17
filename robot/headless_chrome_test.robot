*** Settings ***
Library    SeleniumLibrary
# Library    Selenium2Library

# Test environment
# Env : stg
# cid : 127 (Scenario v1)
# app : Web_chatwindow_Nsecond (Web)

*** Test Cases ***
Headless Chrome test
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/chatwindow_Nseconds.html    headlesschrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Element Should Not Be Visible    css=div.window-box
    Sleep    18
    Element Should Be Visible    css=div.window-box
    Close Browser
