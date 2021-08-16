*** Settings ***
# Library    SeleniumLibrary
Library    Selenium2Library

# Test environment
# Env : stg
# cid : 149 (Scenario v2)
# app : QA (Web)

*** Test Cases ***
Chat bot behavior check - SYNALIO Scenario v1 with Multiple chat window : SCENARIO FLOW
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/MessageType/    Chrome
    Wait Until Element Is Visible    id=divtitle
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=body > div.window-box
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
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/MessageType/    Chrome
    # Action part
    Close Browser
