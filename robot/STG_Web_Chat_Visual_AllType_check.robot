*** Settings ***
Library    SeleniumLibrary

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

*** Variables ***
${test_page}=    https://eugenechangresola.github.io/WebbotPages/STG/SYNALIO/149/

*** Test Cases ***
Chat Visual:Type 1
    Open Browser    ${test_page}?chatvisual=1    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=body > div > div.outer-box > div.main-box > div.outer-box-set-box > div.inner-box-img-box
    Sleep    2
    Element Should Be Visible    css=body > div > div.outer-box > div.main-box > div.outer-box-set-box > div.inner-box-txt-box
    Capture Element Screenshot    css=div.window-box    STG_ChatVisual_Type1.png
    # Set time out for capturing process
    Sleep    2
    Click Element    id=btn-open-close
    Wait Until Element Is Not Visible    css=body > div > div.outer-box > div.main-box > div.outer-box-set-box > div.inner-box-txt-box
    Sleep    2
    Click Element    css=div.btn-set-box
    Wait Until Element Is Visible    css=body > div > div.outer-box > div.header-box > div.inner-header-set-box > div.name-box
    Unselect Frame
    Close Browser

Chat Visual:Type 2
    Open Browser    ${test_page}?chatvisual=2    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=div.msg-block
    Sleep    2
    Capture Element Screenshot    css=div.window-box    STG_ChatVisual_Type2.png
    # Set time out for capturing process
    Sleep    2
    Click Element    id=btn-open-close
    Wait Until Element Is Not Visible    css=div.msg-block
    Sleep    2
    Click Element    css=div.btn-set-box
    Wait Until Element Is Visible    css=body > div > div.outer-box > div.header-box > div.inner-header-set-box > div.name-box
    Unselect Frame
    Close Browser

Chat Visual:Type 3
    Open Browser    ${test_page}?chatvisual=3    Chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=div.img-box
    Sleep    2
    Capture Element Screenshot    css=div.window-box    STG_ChatVisual_Type3A.png
    # Set time out for capturing process
    Sleep    2
    Click Element    id=synalio-visual-close
    Wait Until Element Is Not Visible    css=div.img-box
    Sleep    2
    Capture Element Screenshot    css=div.window-box    STG_ChatVisual_Type3A_minimized.png
    # Set time out for capturing process
    Sleep    2
    Click Element    css=div.btn-set-box
    Wait Until Element Is Visible    css=body > div > div.outer-box > div.header-box > div.inner-header-set-box > div.name-box
    Unselect Frame
    Close Browser

Chat Visual:Type 3 (minimize to image visual)
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/SYNALIO/?chatvisual=3    chrome
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=div.img-box
    Sleep    2
    Capture Element Screenshot    css=div.window-box    STG_ChatVisual_Type3B.png
    # Set time out for capturing process
    Sleep    2
    Click Element    css=div.img-box
    Wait Until Element Is Visible    css=body > div > div.outer-box > div.header-box > div.inner-header-set-box > div.name-box
    Wait Until Element Is Visible    id=btn-open-close
    Click Element    id=btn-open-close
    Wait Until Element Is Not Visible    css=body > div > div.outer-box > div.header-box > div.inner-header-set-box > div.name-box
    Sleep    2
    Capture Element Screenshot    css=div.window-box    STG_ChatVisual_Type3B_minimized.png
    # Set time out for capturing process
    Sleep    2
    Click Element    css=div.img-box
    Wait Until Element Is Visible    css=body > div > div.outer-box > div.header-box > div.inner-header-set-box > div.name-box
    Unselect Frame
    Close Browser
