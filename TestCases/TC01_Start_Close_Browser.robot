*** Settings ***

Library  SeleniumLibrary

*** Variables ***

#${BROWSER}  Chrome
#${BROWSER}  Firefox
${BROWSER}  Edge
${URL}  https://www.google.com

*** Test Cases ***
TC01_START_STOP Browser
    OpenBrowser  ${URL}  ${BROWSER}
    CloseBrowser



*** Keywords ***
