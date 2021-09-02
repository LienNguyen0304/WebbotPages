*** Settings ***
# Library    Zoomba.GUILibrary    plugins=Zoomba.Helpers.EdgePlugin
Library    SeleniumLibrary
Library    BuiltIn
Variables    userinfo.py
Metadata    Test Env    Staging
Force Tags     Smoke
Default Tags    Admin    Login

*** Keywords ***
Open web page and login
    [Documentation]    Login synalio with scenario v2 account
    Open Browser    https://synalio.stg.resola.net/app    chrome
    Sleep    5
    Wait Until Page Contains Element    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=form > input.btn.btn-common-page.form-control
    Input Text    id=id_username    ${USERNAME}
    Input Password    id=id_password    ${PASSWORD}
    Click Button    css=form > input.btn.btn-common-page.form-control
    Wait Until Element Is Visible    css=body > div.wrapper > aside > div.userbase-box > a > img:nth-child(1)
    # Sleep    20
    Close Browser


*** Comment ***
Open test web page
# テストページを開きキャンペーンの表示を確認してクリックする
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/v2/?campaign=1    chrome
    Wait Until Page Contains Element    id=divtitle
    Wait Until Page Contains Element    id=synalio-campaign
    Element Should Be Visible    id=synalio-campaign
    Page Should Contain Element    css=#synalio-campaign > div > div > div.synalio-campaign_template.synalio-campaign-image_background
    Click Element    css=#synalio-campaign-popup-link
Campaign popup widget type 2
    Wait Until Page Contains Element    id=divtitle
    Wait Until Page Contains Element    id=synalio-campaign
    Element Should Be Visible    id=synalio-campaign
    Page Should Contain Element    css=#synalio-campaign > div > div > div.synalio-campaign_template.synalio-campaign-image_background
    Click Element    css=#synalio-campaign-popup-link
Campaign popup widget type 3
    Close Browser
