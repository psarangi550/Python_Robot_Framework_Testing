*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/Open_Browser_with_args_return_value.robot

*** Variables ***

${URL}  https://thetestingworld.com/testings
${BROWSER}  Chrome

*** Test Cases ***
TC01_OPEN_MAX_BROWSER_WITH_LOG VALUE
    RC01_OPEN_BROWSER_MAX_WINDOW_LOG_Title  ${URL}  ${BROWSER}
    Input Text    name:fld_username    Pratik
    Close All Browsers

TC02_OPEN_MAX_BROWSER_WITH_RETURN_VALUE_UTILIZATION
    ${RES}=     RC02_OPEN_BROWSER_MAX_WINDOW_RETURN_Title    ${URL}   ${BROWSER}
    Input Text    name:fld_username  ${RES}
    Close All Browsers



*** Keywords ***

