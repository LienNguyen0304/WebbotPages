*** Settings ***
Library    SeleniumLibrary
Library    Dialogs

# Test environment
# Env : stg
# cid : 127 (Scenario v1)
# app : MesssageType (Web)

*** Variables ***
${browser}

*** Test Cases ***
Chat bot behavior check - SYNALIO Scenario v1 with Multiple chat window : SCENARIO FLOW
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/MessageType/    ${browser}
    Wait Until Element Is Visible    id=divtitle
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=body > div.window-box
    Sleep    2
    Click Element    css=body > div > div > div.header-box
    Wait Until Element Contains   css=#synalio-chat-message > div > div.chat-block    Simpleシンプル
    Log    Scenario - "Simple" type message : PASSED
    Click Element    xpath=//*[@id="synalio-chat-message"]/div/div[3]/span[contains(text(),'テキスト')]
    Wait Until Element Contains    css=#synalio-chat-message > div:nth-child(3) > div.chat-block           Textテキスト
    Log    Scenario - "Text" type message : PASSED
    Click Element    xpath=//*[@id="synalio-chat-message"]/div[3]/div[3]/span[contains(text(),'Formフォーム')]
    Wait Until Element Contains    css=#input > div.chat-form-group.row.form-element > div > label    Formフォーム:
    Log    Scenario - "Form" type message : PASSED
    Click Element    xpath=//*[@id="synalio-chat-message"]/div[5]/div[3]/span[contains(text(),'Scriptスクリプト')]
    Handle Alert
    # Use "Handle Alert" keyword to confirm the javacript confirm and alert, default is ACCEPT auto click to OK
    Wait Until Element Contains    css=#synalio-chat-message > div:nth-child(6) > div.chat-block            Scriptスクリプト
    Log    Scenariop - "Script" type message : PASSED
    Click Element    xpath=//*[@id="synalio-chat-message"]/div[6]/div[3]/span[contains(text(),'Carouselカルーセル')]
    Wait Until Element Contains    css=#swiper-container-1 > li > div.inner-body-box > div.text-block > p.main-text    Carouselカルーセル
    Log    Scenario - "Carousel" type message : PASSED
    Click Element    xpath=//*[@id="swiper-container-1"]/li/div[2]/div[2]/div[1]/span[contains(text(),'ホーム')]
    Wait Until Element Contains    css=#synalio-chat-message > div:nth-child(10) > div.chat-block    Simpleシンプル
    Click Element    css=#btn-open-close
    Wait Until Element Is Visible    css=#btn-open-close
    Sleep    2
    Click Element    css=body > div > div.outer-box > div.header-box > div.inner-header-set-box > div.btn-set-box
    Sleep    2
    Wait Until Element Is Visible    css=div.btn-home
    Log    Chat box - "Minimize and reopen" behavior : PASSED
    Click Element    id=home-link
    Wait Until Element Contains    css=#synalio-chat-message > div:nth-child(11) > div.chat-block    Simpleシンプル
    Log    Chat box - "Home button" behavior : PASSED
    Close Browser


Chat bot behavior check - SYNALIO Scenario v1 with Multiple chat window : ACTION
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/MessageType/action.html    ${browser}
    Wait Until Element Is Visible    id=divtitle
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=body > div.window-box
    Sleep    2
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
