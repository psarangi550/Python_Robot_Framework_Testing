*** Settings ***
Library     ../External_python/read_locator.py
Library    Collections
Library    SeleniumLibrary

*** Variables ***

${URL}    https://www.thetestingworld.com/testings/
${BROWSER}    Chrome



*** Test Cases ***
TC01 READ DATA FROM JSON
    ${OUTPUT}=    RC01 EXECUTE PYTHON SCRIPT_NEW  Registration.username_text 
    Log To Console    Output is ${OUTPUT}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    Input Text    name:${OUTPUT}    pratik
    Close All Browsers

*** Keywords ***
RC01 EXECUTE PYTHON SCRIPT_NEW
    [Arguments]  ${locator_item}
    ${TOTAL}=    read_locator.get_jsonpath  ${locator_item}
    ${OUT}=    Get From List    ${TOTAL}    0
    Log To Console    Function Return  is ${OUT}
    [Return]    ${OUT}
