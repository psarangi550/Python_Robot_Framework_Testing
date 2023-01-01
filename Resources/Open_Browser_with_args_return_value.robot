*** Settings ***

Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
RC01_OPEN_BROWSER_MAX_WINDOW_LOG_Title
    [Arguments]  ${URL}  ${BROWSER}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1seconds
    ${fetch_title}=  Get Title
    Log To Console  ${fetch_title}

RC02_OPEN_BROWSER_MAX_WINDOW_RETURN_Title
    [Arguments]  ${URL}  ${BROWSER}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1seconds
    ${fetch_title}=  Get Title
    [Return]  ${fetch_title}
