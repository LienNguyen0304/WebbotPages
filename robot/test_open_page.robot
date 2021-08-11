*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
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
