*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${URL}  https://www.thetestingworld.com/testings/
${BROWSER}  Chrome

*** Test Cases ***
TC01_INPUT_TEXT_TO_INPUT_BOX
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1second
    KEYWORDS_FOR_INPUT_TEXT_WITH_ARGS  pratik  psarangi50@gmail.com
    Close Browser

*** Keywords ***
KEYWORDS_FOR_INPUT_TEXT_WITH_ARGS
    [Arguments]  ${username}  ${email}
    Input Text    name:fld_username    ${username}
    Input Text    xpath://input[@name='fld_email']    ${email}
