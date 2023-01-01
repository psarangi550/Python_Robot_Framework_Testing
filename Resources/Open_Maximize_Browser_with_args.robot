*** Settings ***

Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
RC01_OPEN_MAX_BROWSER_WITH_ARGS
    [Arguments]  ${URL}  ${BROWSER}
    SeleniumLibrary.Open Browser  ${URL}  ${BROWSER}
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Set Selenium Speed    1 seconds
