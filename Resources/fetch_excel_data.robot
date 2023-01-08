*** Settings ***

Library    Collections
Library    SeleniumLibrary
Library    ../External_python/read_excel_data.py


*** Variables ***

${URL}    https://www.thetestingworld.com/testings/
${Browser}    Chrome


*** Test Cases ***
TC01_Read_Excel_Data
    [Setup]    RC02_Start_Stop_Browser    ${URL}    ${Browser}
    [Teardown]     RC03_Close_Browser
    @{OUTPUT}=    RC01_Read_Excel_Data  C:\\Users\\psara\\Downloads\\Python_Robot_Framework_Testing\\External_python\\book3.xlsx
    FOR     ${VAL}     IN    @{OUTPUT}
        ${username}=     Get From List     ${VAL}    0
        ${password}=     Get From List     ${VAL}    1
        ${email}=        Get From List     ${VAL}    2 
        Input Text    name:fld_username   ${username}
        Input Text    name:fld_password   ${username} 
        Input Text    name:fld_email   ${username} 
        Log To Console    Execution Prceeding 
     END

*** Keywords ***
RC01_Read_Excel_Data
    [Arguments]  ${location}
    @{data}=    read_data    ${location}
    [Return]  @{data}

RC02_Start_Stop_Browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

RC03_Close_Browser
    Close All Browsers
    