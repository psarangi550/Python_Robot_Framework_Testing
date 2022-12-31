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
    KEYWORDS_FOR_INPUT_TEXT_WITHOUT_ARGS
    Close Browser

*** Keywords ***
KEYWORDS_FOR_INPUT_TEXT_WITHOUT_ARGS
    Input Text    name:fld_username    Pratik
    Input Text    xpath://input[@name='fld_email']    psarangi50@gmail.com
