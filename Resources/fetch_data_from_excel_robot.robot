*** Settings ***

Library    ../External_python/read_data_excel_robot.py
Library    SeleniumLibrary
Library    Collections

*** Variables ***



*** Keywords ***
RC01_Start_Max_Browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

RC02_Close_Browser
    Close All Browsers

RC03_Read_Max_ROW
     [Arguments]     ${location}     ${sheetname} 
    ${row_no}=    fetch_rows_from_excel    ${location}    ${sheetname}
    [Return]    ${row_no}

R04_Read_Cell_Value
    [Arguments]    ${location}     ${sheetname}     ${row}    ${column}
    ${row_val}=    read_data_excel_robot.fetch_all_row_column    ${location}    ${sheetname}    ${row}    ${column}
    [Return]    ${row_val}

R05_click_on_btn
    Click Element    xpath://label[@for='tab2']
    