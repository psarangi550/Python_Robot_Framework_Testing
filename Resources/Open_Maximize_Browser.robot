*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${URL}  https://thetestingworld.com/testings/
${BROWSER}  Chrome

*** Keywords ***
RC01_OPEN_MAX_BROWSER_WITHOUT_ARGS
    SeleniumLibrary.Open Browser  ${URL}  ${BROWSER}
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Set Selenium Speed    1 seconds
