*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/Open_Maximize_Browser_with_args.robot

*** Variables ***

${URL}  https://thetestingworld.com/testings/
${BROWSER}  Chrome

*** Test Cases ***
TC01_USAGE_OF_KEYWORD_WITH_ARGS
    RC01_OPEN_MAX_BROWSER_WITH_ARGS  ${URL}  ${BROWSER}
    Input Text    xpath://input[@name='fld_username']    Pratik
    Close All Browsers

*** Keywords ***