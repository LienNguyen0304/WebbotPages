*** Settings ***
Library    SeleniumLibrary

# Test environment
# Env : stg
# cid : 27
# app : QA_SLACKBot

*** Test Cases ***
Chat Bot Behavior Check : Slack
    # Require specify the domain before login, then the confirmation popup won't shows up to block the web interface
    Open Browser    https://app.slack.com/client/TQKU5CG9M/CQKU5CRPH    chrome
    Sleep    5
    Wait Until Element Is Visible    id=domain
    Input Text    id=domain    resolaqa
    Click Element    css=#page_contents > div > div > div.p-refreshed_page > div.p-signin_form__form_container > form > button
    Wait Until Element Is Visible    id=signin_btn
    Input Text    id=email    y.chou+stg_pep_super@resola.ai
    Input Password    id=password    Qa12345678
    Click Button    id=signin_btn
    Sleep    5
    Wait Until Element Is Visible    css=body > div.p-client_container > div > div.p-workspace-layout > div.p-workspace__sidebar
    # Click on test bot to switch the falk channel
    Click Element    xpath=//span[contains(text(),'[PEP][STG]QA_Dummy')]
    Sleep    3
    # Before input text, Need click on input field first
    Click Element    css=body > div.p-client_container > div > div.p-workspace-layout > div.p-workspace__primary_view > div > div.p-file_drag_drop__container > div.p-workspace__primary_view_footer > div > div > div > div.p-message_pane_input_inner_main > div > div > div > div.c-texty_input_unstyled__container.c-texty_input_unstyled__container--size_medium.c-texty_input_unstyled__container--multi_line.c-texty_input_unstyled__container--no_actions > div > div.ql-editor.ql-blank
    Input Text    css=body > div.p-client_container > div > div.p-workspace-layout > div.p-workspace__primary_view > div > div.p-file_drag_drop__container > div.p-workspace__primary_view_footer > div > div > div > div.p-message_pane_input_inner_main > div > div > div > div.c-texty_input_unstyled__container.c-texty_input_unstyled__container--size_medium.c-texty_input_unstyled__container--multi_line.c-texty_input_unstyled__container--no_actions > div > div.ql-editor.ql-blank > p    messageflowcheck
    Click Button    css=body > div.p-client_container > div > div.p-workspace-layout > div.p-workspace__primary_view > div > div.p-file_drag_drop__container > div.p-workspace__primary_view_footer > div > div > div > div.p-message_pane_input_inner_main > div > div > div > div.c-wysiwyg_container__footer.c-wysiwyg_container__footer--with_formatting > div.c-wysiwyg_container__suffix > div > span > button
    Wait Until Element Is Visible    css=span.c-message_kit__text
    # 無法正確導正到最新回覆的Message .... id 是自動生成
    Element Should Contain    css=span.c-message_kit__text    Simple message
    Close Browser
