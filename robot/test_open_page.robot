*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open test web page
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/v2/    chrome
    Wait Until Page Contains Element    id=divtitle
    Sleep    15
    Wait Until Page Contains Element    id=synalio-campaign
    Element Should Be Visible    id=synalio-campagin
    Click Element    css=synalio-campaign_template synalio-campaign-image_background
    [Teardown]    Close Browser
