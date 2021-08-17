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
# Oem : libero
# cid : 138
# app : QA_LINEBOT
# ------------------------


*** Test Cases ***
PEP - Web New Chat window : App settings DEMO Bot display check
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

PEP - Web New Chat window : Scenario editor DEMO Bot display check
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

PEP - Web New Chat window : Real chat bot display check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/PEP/    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.inner-box-img-box
    Close Browser

PEP - Web Old Chat Window : App settings DEMO Bot display check
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

PEP - Web Old Chat Window : Scenario editor DEMO Bot display check
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

PEP - Web Old Chat Window : Real chat bot display Check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/PEP/old.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.synalio-chat-window-toggled.synalio-border
    Click Element    css=body > div > div.synalio-chat-window-toggled.synalio-border > div > span
    Wait Until Element Is Visible    css=div.synalio-chat-body
    Close Browser

PEP - Web Embedded Chat Window : Real chat bot display Check
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/PEP/embedded.html    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Wait Until Element Is Visible    css=div.synalio-chat-header
    Wait Until Element Is Visible    css=div.synalio-chat-body
    Wait Until Element Is Visible    id=synalio-chat-text-input
    Wait Until Element Is Visible    css=button.synalio-btn
    Close Browser

SYNALIO - Web Scenario V2 Chat Window : App Settings and Scenario Editor DEMO Bot Check
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
    Click Element    css=div.outer-box > div.main-box > div.outer-box-set-box > div.inner-box-btn-box
    Wait Until Element Is Visible    css=div.chat-block
    Unselect Frame
    # Link copied from Scenario editor
    Go To    https://synalio.stg.resola.net/demo?k=de5bb3d97e84424ca1d782d6555e48b9&sce=894
    Wait Until Element Is Visible    id=save-log
    Select Checkbox    id=save-log
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Sleep    3
    Click Element    css=div.outer-box > div.main-box > div.outer-box-set-box > div.inner-box-btn-box
    Wait Until Element Is Visible    css=div.chat-block
    Unselect Frame
    Close Browser

LIBERO - LINE : App Settings and Scenario Editor DEMO Bot Check
    Open Browser    https://libero.stg.resola.net/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+stg_libero_app@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from App settings page
    Go To    https://libero.stg.resola.net/demo?k=07b5bc1de8b9417a9e7379de1fada4a8
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
    Go To    https://libero.stg.resola.net/demo?k=07b5bc1de8b9417a9e7379de1fada4a8&sce=821
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
    Open Browser    https://app.shindan-maker.stg.resola.net/user/login?next=/app/shindan    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+stg_shindan_a@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from App settings page - Shindan bot doesn't support open demobot from App settings page
    # Link copied from Scenario editor
    Go To    https://app.shindan-maker.stg.resola.net/demo?k=10fa59e236b847e6b793837816c8099b&sce=557
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
   Open Browser    https://pep.stg.resola.net/user/login    Chrome
   Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
   Input Text    id=id_username    y.chou+stg_pep_appmanager@resola.ai
   Input Password    id=id_password    Qa12345678
   Click Button    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
   # Link copied from app Settings
   Go to    https://pep.stg.resola.net/demo?k=bad0ce7075844dca88d9a96ed40073ca
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
   Go To    https://pep.stg.resola.net/demo?k=bad0ce7075844dca88d9a96ed40073ca&sce=919
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
    Open Browser    https://pep.stg.resola.net/user/login    Chrome
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    y.chou+stg_pep_appmanager@resola.ai
    Input Password    id=id_password    Qa12345678
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Link copied from app Settings
    Go to    https://pep.stg.resola.net/demo?k=55519ee6d383473884281120199b5aa7
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
    Go To    https://pep.stg.resola.net/demo?k=55519ee6d383473884281120199b5aa7&sce=184
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
   Open Browser    https://pep.stg.resola.net/user/login    Chrome
   Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
   Input Text    id=id_username    y.chou+stg_pep_appmanager@resola.ai
   Input Password    id=id_password    Qa12345678
   Click Button    css=form > input.btn.btn-common-page.form-control
   Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
   # Link copied from app Settings
   Go to    https://pep.stg.resola.net/demo?k=23812f2d9af04c36bca6723581952dfa
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
   Go To    https://pep.stg.resola.net/demo?k=23812f2d9af04c36bca6723581952dfa&sce=391
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
    Open Browser    https://pep.stg.resola.net/user/login    Chrome
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
