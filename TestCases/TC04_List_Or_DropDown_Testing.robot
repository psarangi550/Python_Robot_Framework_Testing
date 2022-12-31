*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${URL}  https://www.thetestingworld.com/testings/
#${URL}  https://www.facebook.com/
${BROWSER}  Chrome

*** Test Cases ***
TC01_TESTING_DROPDOWN_LIST
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1second
#    Select From List By Index    name:sex  1 #1st Approach
#    Select From List By Value    name:sex  2
    Select From List By Label    name:sex  Female
    Close Browser
