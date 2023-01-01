*** Settings ***

Library     SeleniumLibrary
Library     Collections

*** Variables ***

${URL}  https://thetestingworld.com
${URL2}  https://www.facebook.com/
${BROWSER}  Chrome

*** Test Cases ***
TC01_USING_KEYWORD_EVENT_WITH_WITHOUT_ASCII_VALUE
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    Click Link    link:Quick Demo
    Press Keys    id:wdform_1_element_first2    Pratik
    Press Keys    id:wdform_1_element_first2    TAB
    SeleniumLibrary.Open Browser    ${URL2}     ${BROWSER}
    Switch Browser    2
    Press Keys  xpath://input[@id='email']  psarangi50@gmail.com
    Press Keys  xpath://input[@id='email']  TAB
    Press Keys  xpath://input[@id='pass']   Qwerty@123
    Press Keys  xpath://input[@id='pass']   TAB
    Sleep    2 seconds
    Press Keys  xpath://input[@id='pass']   ENTER
    Close All Browsers

*** Keywords ***

*** Comments ***
