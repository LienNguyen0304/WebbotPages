*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
Resource    test_open_page.robot

# Library    Selenium2Library

# Test environment
# ------------------------
# Env : stg
# Oem : PEP
# cid : 27
# app : QA_Web and QA_Web2
# ------------------------
# Oem : SYNALIO
# cid : 149 (Scenario V2)
# app : QA

*** Test Cases ***
Test 1
      Open web page and login


*** Comments ***
PEP - LINEWORKS Chat Window : App settings and Scenario Editor DEMO Bot display check
   Open Browser    https://pep.stg.resola.net/user/login    Edge   options=use_chromium=True
   Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
   Input Text    id=id_username    y.chou+stg_pep_appmanager@resola.ai
   Input Password    id=id_password    Qa12345678
   Click Button    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
   # Link copied from app Settings
   Go to    https://pep.stg.resola.net/demo?k=102b925b13f048bebfd0e3a8745f4926
   Wait Until Element Is Visible    id=save-log
   Select Checkbox    id=save-log
   Wait Until Page Contains Element    id=synalio-iframe
   Select Frame    id=synalio-iframe
   Sleep    3
   Wait Until Element Is Visible    css=div.synalio-chat-window-toggled.synalio-border
   click Element    css=div.synalio-chat-window-toggled.synalio-border > div.synalio-chat-header
   Wait Until Element Is Visible    css=div.synalio-chat-window > div.synalio-chat-body
   Unselect Frame
   # Link copied from Scenario Editor
   Go To    https://pep.stg.resola.net/demo?k=102b925b13f048bebfd0e3a8745f4926&sce=362
   Wait Until Element Is Visible    id=save-log
   Select Checkbox    id=save-log
   Wait Until Page Contains Element    id=synalio-iframe
   Select Frame    id=synalio-iframe
   Sleep    3
   Wait Until Element Is Visible    css=div.synalio-chat-window-toggled.synalio-border
   click Element    css=div.synalio-chat-window-toggled.synalio-border > div.synalio-chat-header
   Wait Until Element Is Visible    css=div.synalio-chat-window > div.synalio-chat-body
   Unselect Frame
   Close Browser
