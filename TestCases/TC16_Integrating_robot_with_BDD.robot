*** Settings ***

Library       SeleniumLibrary

*** Variables ***

${URL}    https://www.thetestingworld.com/testings/
${BROWSER}    Chrome

*** Test Cases ***
TC01_Inserting_To_TextBox_in_Robot
    Given RC01_Start_browser_window_command  ${URL}  ${BROWSER}
    ${TITLE}=    Get Title
    Log To Console    ${TITLE}
    When Input Text    name:fld_username    Pratik
    Then RC02_close_browser_window_command


*** Keywords ***
RC01_Start_browser_window_command
    [Arguments]  ${URL}  ${BROWSER}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
RC02_close_browser_window_command
    Close All Browsers


