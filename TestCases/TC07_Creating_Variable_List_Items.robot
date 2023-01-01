*** Settings ***

Library     SeleniumLibrary
Library     Collections

*** Variables ***

*** Test Cases ***
TC01_DEFINE_PRINT_VARIABLES
    ${Val1}=    Set Variable    HelloWorld
    Log To Console    ${Val1}

TC02_DEFINE_PRINT_LIST_ALONG_WITH_LENGTH
    @{list1}=   Create List     Hello   22  23.22   World
    Log To Console    ${list1}  
    ${list_length}  Get Length    ${list1}
    Log To Console    ${list_length}
    ${fetch_value}  Get From List  ${list1}  2
    Log To Console    ${fetch_value}

*** Keywords ***