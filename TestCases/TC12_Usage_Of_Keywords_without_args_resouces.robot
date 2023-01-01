*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/Open_Maximize_Browser.robot

*** Variables ***

*** Test Cases ***
TC01_USAGE_OF_KEYWORD_WITHOUT_ARGS
    RC01_OPEN_MAX_BROWSER_WITHOUT_ARGS
    Input Text    xpath://input[@name='fld_username']    Pratik
    Close All Browsers

*** Keywords ***