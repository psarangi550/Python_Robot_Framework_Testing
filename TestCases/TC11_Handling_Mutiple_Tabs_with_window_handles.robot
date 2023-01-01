*** Settings ***

Library     SeleniumLibrary
Library     Collections

*** Variables ***

${URL}  https://robotframework.org/
${BROWSER}  Chrome

*** Test Cases ***
TC01_Handling_TABS_USING_SELECT_WINDOW_WITH_TITLE_AND_URL
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    Click Link      link:WASM Python
    Switch Window    Pyodide — Version 0.21.3
    ${location}=    Get Location
    Log To Console    ${location}
    Switch Window   Robot Framework
    ${new_location}=    Get Location
    Log To Console    ${new_location}
    Close All Browsers

TC02_Handling_TABS_Using_Window_Handles
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    Click Element    xpath://a[text()='GitHub']
    @{all_window_handles}=  Get Window Handles
    FOR    ${window_ele}    IN    @{all_window_handles}
#        Log To Console    ${window_ele}
         Switch Window  ${window_ele}
         ${url_location}=   Get Location
         Log To Console    ${url_location}
    END
    Close All Browsers

*** Keywords ***


*** Comments ***
