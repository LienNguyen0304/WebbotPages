*** Settings ***
Library    SeleniumLibrary
# Library    Selenium2Library

# Test environment
# ------------------------
# Env : stg
# Oem : PEP
# cid : 27
# app : QA_Web and QA_Web2
# ------------------------
# Oem : SYNALIO
# cid : 149
# app : QA (Scenario V2)
# ------------------------
# Oem : SYNALIO
# cid : 29
# app : QA_Web (Scenario V1)

*** Test Cases ***
PEP - Web DEMO (App Setting) New chat window check
    Open Browser    https://pep.stg.resola.net/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+stg_pep_appmanager@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from app settings
    Go To    https://pep.stg.resola.net/demo?k=e7dfdfaffc1b4b849a47b4c74733486d
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Click Element    css=div.outer-box > div.main-box > div.outer-box-set-box > div.inner-box-btn-box
    Wait Until Element Is Visible    css=div.chat-block
    Close Browser

PEP - Web DEMO (Scenario editor) New Chat window check
    Open Browser    https://pep.stg.resola.net/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+stg_pep_appmanager@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from scenario editor
    Go To    https://pep.stg.resola.net/demo?k=e7dfdfaffc1b4b849a47b4c74733486d&sce=252
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Click Element    css=div.outer-box > div.main-box > div.outer-box-set-box > div.inner-box-btn-box
    Wait Until Element Is Visible    css=div.chat-block
    Close Browser

PEP - Web Real New Chat window check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/PEP/    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.inner-box-img-box
    Close Browser

PEP - Web DEMO (App settings) Old Chat Window
   Open Browser    https://pep.stg.resola.net/user/login    Chrome
   Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
   Input Text    id=id_username    y.chou+stg_pep_appmanager@resola.ai
   Input Password    id=id_password    Qa12345678
   Click Button    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
   # Link copied from app Settings
   Go to    https://pep.stg.resola.net/demo?k=762739263eff43f391c4a4a11cc1cf9b
   Wait Until Element Is Visible    id=save-log
   Select Checkbox    id=save-log
   Wait Until Page Contains Element    id=synalio-iframe
   Select Frame    id=synalio-iframe
   Sleep    3
   click Element    css=div.synalio-chat-window-toggled.synalio-border > div.synalio-chat-header
   Wait Until Element Is Visible    css=div.synalio-chat-window > div.synalio-chat-body
   Unselect Frame
   # Embedded mode's link copied from app settings, Check Emebedded Mode display
   Go To    https://pep.stg.resola.net/demo?k=762739263eff43f391c4a4a11cc1cf9b&e=1
   Wait Until Element Is Visible    id=save-log
   Select Checkbox    id=save-log
   Wait Until Page Contains Element    id=synalio-iframe
   Select Frame    id=synalio-iframe
   Wait Until Element Is Visible    css=div.synalio-chat-window
   Wait Until Element Is Visible    css=#synalio-chat-footer-container > div.synalio-chat-footer-input
   Wait Until Element Is Visible    css=#synalio-chat-footer-container > div.synalio-chat-footer-button > button
   Close Browser

PEP - Web DEMO (Scenario editor) Old Chat Window
   Open Browser    https://pep.stg.resola.net/user/login    Chrome
   Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
   Input Text    id=id_username    y.chou+stg_pep_appmanager@resola.ai
   Input Password    id=id_password    Qa12345678
   Click Button    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
   # Link copied from Scenario editor
   Go to    https://pep.stg.resola.net/demo?k=762739263eff43f391c4a4a11cc1cf9b&sce=248
   Wait Until Element Is Visible    id=save-log
   Select Checkbox    id=save-log
   Wait Until Page Contains Element    id=synalio-iframe
   Select Frame    id=synalio-iframe
   Sleep    3
   click Element    css=div.synalio-chat-window-toggled.synalio-border > div.synalio-chat-header
   Wait Until Element Is Visible    css=div.synalio-chat-window > div.synalio-chat-body
   Close Browser

PEP - Web Real Old Chat Window check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/PEP/old.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.synalio-chat-window-toggled.synalio-border
    Click Element    css=body > div > div.synalio-chat-window-toggled.synalio-border > div > span
    Wait Until Element Is Visible    css=div.synalio-chat-body
    Close Browser

PEP - Web Real embedded mode check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/PEP/embedded.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.synalio-chat-header
    Wait Until Element Is Visible    css=div.synalio-chat-body
    Wait Until Element Is Visible    id=synalio-chat-text-input
    Wait Until Element Is Visible    css=button.synalio-btn
    Close Browser

SYNALIO - Web Scenario V2 DEMO (App Settings) chat window check
    Open Browser    https://synalio.stg.resola.net/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+stg_syn2_app@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from App settings page
    Go To    https://synalio.stg.resola.net/demo?k=de5bb3d97e84424ca1d782d6555e48b9
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=body > div > div.outer-box
    Click Element    css=body > div > div.outer-box > div.header-box
    Wait Until Element Is Visible    css=div.chat-block
    Unselect Frame
    Close Browser

SYNALIO - Web Scenario V2 DEMO (Scenario editor) chat window check
    Open Browser    https://synalio.stg.resola.net/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+stg_syn2_app@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from Scenario editor
    Go To    https://synalio.stg.resola.net/demo?k=de5bb3d97e84424ca1d782d6555e48b9&sce=894
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=body > div > div.outer-box
    Click Element    css=body > div > div.outer-box > div.header-box
    Wait Until Element Is Visible    css=div.chat-block
    Unselect Frame
    Close Browser

SYNALIO - Web Scneario V2 Real chat window Check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/SYNALIO/149/    chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=body > div > div.outer-box
    Click Element    css=body > div > div.outer-box > div.header-box
    Sleep    3
    Wait Until Element Is Visible    css=#synalio-chat-message > div > div.chat-block
    Close Browser

SYNALIO - Web Scneario V1 Real chat window Check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/SYNALIO/    chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=body > div > div.outer-box
    Click Element    css=body > div > div.outer-box > div.header-box
    Sleep    3
    Wait Until Element Is Visible    css=#synalio-chat-message > div > div.chat-block
    Close Browser
