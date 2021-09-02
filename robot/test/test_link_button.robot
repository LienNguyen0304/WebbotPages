*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TARGET_URL}=    https://www.google.co.jp/search?q=resola
${INPUT_FIELD}=    id=synalio-chat-text-input
${SUBMIT}=    css=button.send-text-btn
${BROWSER}=

*** Keywords ***
Open chat bot test page and wait for chat window appeared
    Open Browser    https://eugenechangresola.github.io/WebbotPages/STG/AUTO/V2/    ${BROWSER}
    Wait Until Page Contains Element    id=synalio-iframe
    Select Frame    id=synalio-iframe
    Wait Until Element Is Visible    css=div.window-box
    Click Element    css=div.inner-box-img-box
    Wait Until Element Is Visible    css=div.chat-block

Check new opened page and URL
    Sleep    3
    # Save the window tabs index into var ${handles}
    ${handles}=    Get Window Handles
    # Switch Window    ${handles}[0]
    # Switch tab by switch window and use handles index
    Switch Window    ${handles}[1]
    Sleep    2
    Location Should Be    ${TARGET_URL}
    Close Window
    Switch Window    ${handles}[0]
    Sleep    3


*** Test Cases ***
Link button test (_blank)
    Set Log Level    NONE
    Open chat bot test page and wait for chat window appeared
    Input Text    ${INPUT_FIELD}    text
    Click Element    ${SUBMIT}
    Sleep    5
    Click Element    xpath=//span[contains(text(), 'text link')]
    Check new opened page and URL
    Select Frame    id=synalio-iframe
    Input Text    ${INPUT_FIELD}    form
    Click Element    ${SUBMIT}
    Sleep    5
    Click Element    xpath=//span[contains(text(), 'Form Link')]
    Check new opened page and URL
    Select Frame    id=synalio-iframe
    Input Text    ${INPUT_FIELD}    script
    Click Element    ${SUBMIT}
    Handle Alert
    Sleep    5
    Click Element    xpath=//span[contains(text(), 'Script Link')]
    Check new opened page and URL
    Select Frame    id=synalio-iframe
    Input Text    ${INPUT_FIELD}    carousel
    Click Element    ${SUBMIT}
    Sleep    5
    Click Element    xpath=//span[contains(text(), 'Car Link')]
    Check new opened page and URL
    Close Browser
