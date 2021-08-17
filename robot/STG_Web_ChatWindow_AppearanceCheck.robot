*** Settings ***
Library    SeleniumLibrary
# Library    Selenium2Library

# Test environment
# Env : stg
# cid : 127 (Scenario v1)
# app : Web_chatwindow_Nsecond (Web)

*** Test Cases ***
# New Chat window section:
Chat Window Appearance Check - New chat window and N seconds (STG)
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/chatwindow_Nseconds.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Element Should Not Be Visible    css=div.window-box
    Sleep    18
    Element Should Be Visible    css=div.window-box
    Close Browser

Chat Window Appearance Check - New chat window and page loaded (STG)
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/chatwindow_pageload.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Element Should Be Visible    css=div.window-box
    Close Browser

Chat Window Appearance Check - New chat window and scroll to element (STG)
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/chatwindow_scrolltoelement.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Element Should Not Be Visible    css=div.window-box
    Unselect Frame
    Execute Javascript    window.scrollTo(0,2048)
    Select Frame    id=synalio-iframe
    Element Should Not Be Visible    css=div.window-box
    Unselect Frame
    Execute Javascript    window.scrollTo(0,3096)
    Select Frame    id=synalio-iframe
    Element Should Not Be Visible    css=div.window-box
    Unselect Frame
    Execute Javascript    window.scrollTo(0,9000)
    Sleep    1
    Select Frame    id=synalio-iframe
    Element Should Be Visible    css=div.window-box
    Unselect Frame
    Close Browser

Chat Window Appearance Check - New chat window and toggle button (STG)
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/chatwindow_togglebutton.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Element Should Not Be Visible    css=div.window-box
    Unselect Frame
    Click Button    id=togglebutton
    Sleep    1
    Select Frame    id=synalio-iframe
    Element Should Be Visible    css=div.window-box
    Close Browser

# Old Chat window section:
Chat Window Appearance Check - Old chat window and N seconds (STG)
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/chatwindow_old_Nseconds.html    Chrome
    Page Should Not Contain Element    id=synalio-iframe
    Sleep    18
    Page Should Contain Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Element Should Be Visible    css=.synalio-chat-window-toggled > .synalio-chat-header
    Close Browser

Chat Window Appearance Check - Old chat window and page loaded (STG)
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/chatwindow_old_pageload.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Sleep    2
    Select Frame    id=synalio-iframe
    Element Should Be Visible    css=div.synalio-chat-window-toggled.synalio-border
    Close Browser

Chat Window Appearance Check - Old chat window and toggle button (STG)
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/chatwindow_old_togglebutton.html    Chrome
    Wait Until Element Is Visible    id=togglebutton
    Click Button    id=togglebutton
    Sleep    2
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Element Should Be Visible    css=div.synalio-chat-window > div.synalio-chat-header.synalio-border-radius
    Close Browser
