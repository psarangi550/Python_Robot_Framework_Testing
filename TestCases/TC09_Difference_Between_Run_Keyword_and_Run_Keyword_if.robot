*** Settings ***

Library     Collections


*** Variables ***
${Key-Var}  log to console


*** Test Cases ***
USAGE_OF_RUN_KEYWORD
    Run Keyword    ${Key-Var}   Hello World
    ${Key-Var-alter}=   Set Variable    log to console
    Run Keyword    ${Key-Var-alter}     Happy New Year

USAGE_OF_RUN_KEYWORD_IF
    ${URL}=     Set Variable    Chrome
    Run Keyword If    '${URL}'=='Chrome'
    ...    ${Key-Var}    Its Chrome Browser
    ...  ELSE IF    '${URL}'=='Firefox'
    ...    ${Key-Var}    Its Firefox Browser
    ...  ELSE
    ...    ${Key-Var}    Invalid Input

USAGE_OF_RUN_KEYWORD_IF_ALTER_APPROACH
    ${URL_NEW}=     Set Variable    FireFox
    RUN KEYWORD IF      '${URL_NEW}'=='Chrome'  Log to console  Its Chrome Browser
    RUN KEYWORD IF      '${URL_NEW}'=='FireFox'  Log to console  Its FireFox Browser

*** Keywords ***


*** Comments ***
#AFTER RUN KEYWORD and RUN KEYWORD IF PUT A TAB SPACE
#BETWEEN CONDITION AND KEYWORD FOR COMMAND PUT 2 SPACE
#AND ALSO THE KEYWORD AND VARIABLE SHOULD AVE 2 SPACE
#INSIDE RUNE KEYWORD IF WE CAN PUT ELSE IF(SAME STRUCTURE AS RUN KEYWORD IF) AND ELSE CONDITION(NO CONDITION BUT STRUCTURE SAME)

