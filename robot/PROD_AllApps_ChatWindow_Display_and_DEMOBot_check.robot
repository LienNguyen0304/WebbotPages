*** Settings ***
Library    SeleniumLibrary
# Library    Selenium2Library

# Test environment
# ------------------------
# Env : prod
# Oem : PEP
# cid : 1317
# app : QA_Web and QA_Web2
# ------------------------
# Oem : SYNALIO
# cid : 1906
# app : QA (Scenario V2)
# ------------------------
# Oem : libero
# cid : 1833
# app : QA_LINEBot
# ------------------------


*** Test Cases ***

PEP - Web New Chat window : App settings DEMO Bot
    Open Browser    https://app.pep.work/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+prod_pep_app@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from app settings
    Go To    https://app.pep.work/demo?k=d51a7475a31848d4ad0115ccc54eca84
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Click Element    css=div.outer-box > div.main-box > div.outer-box-set-box > div.inner-box-btn-box
    Wait Until Element Is Visible    css=div.chat-block
    Close Browser

PEP - Web New Chat window : Scenario editor DEMO Bot
    Open Browser    https://app.pep.work/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+prod_pep_app@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from scenario editor
    Go To    https://app.pep.work/demo?k=d51a7475a31848d4ad0115ccc54eca84&sce=14463
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Click Element    css=div.outer-box > div.main-box > div.outer-box-set-box > div.inner-box-btn-box
    Wait Until Element Is Visible    css=div.chat-block
    Close Browser

PEP - Web New Chat window : Real chat bot display check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/PEP/    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.inner-box-img-box
    Close Browser

PEP - Web Old Chat Window : App settings DEMO Bot display check
   Open Browser    https://app.pep.work/user/login    Chrome
   Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
   Input Text    id=id_username    y.chou+prod_pep_app@resola.ai
   Input Password    id=id_password    Qa12345678
   Click Button    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
   # Link copied from app Settings
   Go to    https://app.pep.work/demo?k=b1ef055e04a04af2bfdf5a057ba74d91
   Wait Until Element Is Visible    id=save-log
   Select Checkbox    id=save-log
   Wait Until Page Contains Element    id=synalio-iframe
   Select Frame    id=synalio-iframe
   Sleep    3
   click Element    css=div.synalio-chat-window-toggled.synalio-border > div.synalio-chat-header
   Wait Until Element Is Visible    css=div.synalio-chat-window > div.synalio-chat-body
   Unselect Frame
   # Embedded mode's link copied from app settings, Check Emebedded Mode display
   Go To    https://app.pep.work/demo?k=b1ef055e04a04af2bfdf5a057ba74d91&e=1
   Wait Until Element Is Visible    id=save-log
   Select Checkbox    id=save-log
   Wait Until Page Contains Element    id=synalio-iframe
   Select Frame    id=synalio-iframe
   Wait Until Element Is Visible    css=div.synalio-chat-window
   Wait Until Element Is Visible    css=#synalio-chat-footer-container > div.synalio-chat-footer-input
   Wait Until Element Is Visible    css=#synalio-chat-footer-container > div.synalio-chat-footer-button > button
   Close Browser

PEP - Web Old Chat Window : Scenario editor DEMO Bot display check
   Open Browser    https://app.pep.work/user/login    Chrome
   Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
   Input Text    id=id_username    y.chou+prod_pep_app@resola.ai
   Input Password    id=id_password    Qa12345678
   Click Button    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
   # Link copied from Scenario editor
   Go to    https://app.pep.work/demo?k=b1ef055e04a04af2bfdf5a057ba74d91&sce=18065
   Wait Until Element Is Visible    id=save-log
   Select Checkbox    id=save-log
   Wait Until Page Contains Element    id=synalio-iframe
   Select Frame    id=synalio-iframe
   Sleep    3
   click Element    css=div.synalio-chat-window-toggled.synalio-border > div.synalio-chat-header
   Wait Until Element Is Visible    css=div.synalio-chat-window > div.synalio-chat-body
   Close Browser

PEP - Web Old Chat Window : Real chat bot display Check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/PEP/old.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.synalio-chat-window-toggled.synalio-border
    Click Element    css=body > div > div.synalio-chat-window-toggled.synalio-border > div > span
    Wait Until Element Is Visible    css=div.synalio-chat-body
    Close Browser

PEP - Web Embedded Chat Window : Real chat bot display Check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/PEP/embedded.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.synalio-chat-header
    Wait Until Element Is Visible    css=div.synalio-chat-body
    Wait Until Element Is Visible    id=synalio-chat-text-input
    Wait Until Element Is Visible    css=button.synalio-btn
    Close Browser

SYNALIO - Web Scenario V2 Chat Window : App Settings and Scenario Editor DEMO Bot Check
    Open Browser    https://synalio.com/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+prod_syn2_app@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from App settings page
    Go To    https://synalio.com/demo?k=1ebb867cc7224d1c9dca0f2a54018a99
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.window-box
    Click Element    css=div.header-box
    Wait Until Element Is Visible    css=div.chat-block
    Unselect Frame
    # Link copied from Scenario editor
    Go To    https://synalio.com/demo?k=1ebb867cc7224d1c9dca0f2a54018a99&sce=30017
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.window-box
    Click Element    css=div.header-box
    Wait Until Element Is Visible    css=div.chat-block
    Unselect Frame
    Close Browser

LIBERO - LINE : App Settings and Scenario Editor DEMO Bot Check
    Open Browser    https://console.libero-app.com/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+prod_libero_app@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from App settings page
    Go To    https://console.libero-app.com/demo?k=611aba0e505b46a09293b34229cba3d1
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=body > div > div.synalio-chat-window-toggled.synalio-border > div > span
    Click Element    css=body > div > div.synalio-chat-window-toggled.synalio-border > div > span
    Wait Until Element Is Visible    css=body > div > div.synalio-chat-window > div.synalio-chat-body
    Unselect Frame
    # Link copied from Scenario editor
    Go To    https://console.libero-app.com/demo?k=611aba0e505b46a09293b34229cba3d1&sce=25147
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=body > div > div.synalio-chat-window-toggled.synalio-border > div > span
    Click Element    css=body > div > div.synalio-chat-window-toggled.synalio-border > div > span
    Wait Until Element Is Visible    css=body > div > div.synalio-chat-window > div.synalio-chat-body
    Unselect Frame
    Close Browser

Shindan Bot : DEMO Bot Check
    Open Browser    https://app.shindan-maker.com/user/login?next=/app/shindan    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+prod_shindan_test@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from App settings page - Shindan bot doesn't support open demobot from App settings page
    # Link copied from Scenario editor
    Go To    https://app.shindan-maker.com/demo?k=7b570b17afc34e06bf99623ec6240b4b&sce=20669
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=body > div > div.synalio-chat-window-toggled.synalio-border > div > span
    Click Element    css=body > div > div.synalio-chat-window-toggled.synalio-border > div > span
    Wait Until Element Is Visible    css=body > div > div.synalio-chat-window > div.synalio-chat-body
    Unselect Frame
    Close Browser

PEP - Teams Chat Window : App settings and Scenario Editor DEMO Bot display check
   Open Browser    https://app.pep.work/user/login    Chrome
   Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
   Input Text    id=id_username    y.chou+prod_pep_app@resola.ai
   Input Password    id=id_password    Qa12345678
   Click Button    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
   # Link copied from app Settings
   Go to    https://app.pep.work/demo?k=7359ca5712b043a0b8089cc4e385f99c
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
   Go To    https://app.pep.work/demo?k=7359ca5712b043a0b8089cc4e385f99c&sce=29630
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

 PEP - Slack Chat Window : App settings and Scenario Editor DEMO Bot display check
    Open Browser    https://app.pep.work/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+prod_pep_app@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from app Settings
    Go to    https://app.pep.work/demo?k=e3771f75d70146ac899f56a563a8b3cd
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
    Go To    https://app.pep.work/demo?k=e3771f75d70146ac899f56a563a8b3cd&sce=19931
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

PEP - GoogleChat Chat Window : App settings and Scenario Editor DEMO Bot display check
   Open Browser    https://app.pep.work/user/login    Chrome
   Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
   Input Text    id=id_username    y.chou+prod_pep_app@resola.ai
   Input Password    id=id_password    Qa12345678
   Click Button    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
   # Link copied from app Settings
   Go to    https://app.pep.work/demo?k=a7d4bb2a61a44d91bbee3cf0f72b9fb3
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
   Go To    https://app.pep.work/demo?k=a7d4bb2a61a44d91bbee3cf0f72b9fb3&sce=31736
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

 PEP - LINEWORKS Chat Window : App settings and Scenario Editor DEMO Bot display check
    Open Browser    https://app.pep.work/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+prod_pep_app@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from app Settings
    Go to    https://app.pep.work/demo?k=cce69b91bc0c4e15a6b4dd73432f461d
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
    Go To    https://app.pep.work/demo?k=cce69b91bc0c4e15a6b4dd73432f461d&sce=31737
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
