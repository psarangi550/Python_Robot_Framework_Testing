*** Settings ***

Library  SeleniumLibrary

*** Variables ***

#${URL}  https://www.thetestingworld.com/testings/
${URL}  https://www.facebook.com/
${BROWSER}  Chrome

*** Test Cases ***
TC01_TESTING_RADIO_BTN_CHECKBOX_LINK_BTN
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1second
#    Select Radio Button    add_type    home
#    Select Checkbox    xpath://input[@name='terms']
    Click Link    link:Forgotten password?
#    Click Button    css:input[value='Sign up']
#    Click Button    xpath://button[@name='login']
    Close Browser