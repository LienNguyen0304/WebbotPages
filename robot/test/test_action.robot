*** Settings ***
# Library    SeleniumLibrary
Library    Selenium2Library

# Test environment
# Env : stg
# cid : 149 (Scenario v2)
# app : QA (Web)

*** Test Cases ***
Chat bot behavior check - SYNALIO Scenario v1 with Multiple chat window : ACTION
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/MessageType/action.html    Chrome
    Wait Until Element Is Visible    id=divtitle
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=body > div.window-box
    Click Element    css=body > div > div > div.header-box
    Wait Until Element Is Visible    id=synalio-chat-text-input
    Wait Until Element Is Visible    css=div.chat-block
    Input Text    id=synalio-chat-text-input    text message
    Click Element    css=.send-text-btn
    Sleep    3
    Element Should Contain    xpath=//*[@id="synalio-chat-message"]/div[3]/div[2]            [アクション]テキストメッセージ
    Input Text    id=synalio-chat-text-input    Submit Form
    Click Element    css=.send-text-btn
    Wait Until Element Is Visible    css=#input > div.chat-form-group.row.form-element > div > label
    Element Should Contain    css=#input > div.chat-form-group.row.form-element > div > label    Action form:
    Input Text    id=synalio-chat-text-input    Script
    Click Element    css=.send-text-btn
    Handle Alert
    Sleep    3
    Wait Until Element Is Visible    css=div.chat-block
    Element Should Contain    xpath=//*[@id="synalio-chat-message"]/div[6]/div[2]            action script
    Input Text    id=synalio-chat-text-input    carousel
    Click Element    css=.send-text-btn
    Sleep    3
    Wait Until Element Is Visible    css=#swiper-container-1 > li > div.header-block
    Element Should Contain    css=#swiper-container-1 > li > div.inner-body-box > div.text-block > p.main-text    action carousel
    Input Text    id=synalio-chat-text-input    sys error
    Click Element    css=.send-text-btn
    Sleep    3
    Wait Until Element Is Visible    css=div.chat-block
    Element Should Contain    xpath=//*[@id="synalio-chat-message"]/div[10]/div[3]/span    メニューに戻る
    Input Text    id=synalio-chat-text-input    メニュー
    Click Element    css=.send-text-btn
    Sleep    3
    Wait Until Element Is Visible    css=div.chat-block
    Close Browser
