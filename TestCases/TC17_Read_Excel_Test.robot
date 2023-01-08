*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/fetch_data_from_excel_robot.robot
Suite Setup    fetch_data_from_excel_robot.RC01_Start_Max_Browser    ${URL}    ${Browser}
Suite Teardown    fetch_data_from_excel_robot.RC02_Close_Browser


*** Variables ***

${URL}    https://thetestingworld.com/testings/
${Browser}    Chrome
${location_name}    C:\\Users\\psara\\Downloads\\Python_Robot_Framework_Testing\\External_python\\book3.xlsx
${sheet_name}    Sheet1

*** Test Cases ***

TC01_Testing_Excel_With_Data_Driven
    Log To Console    ${location_name} 
    ${row_val}=    fetch_data_from_excel_robot.RC03_Read_Max_ROW    ${location_name}    ${sheet_name}
    FOR    ${counter}    IN RANGE    1    ${row_val}+1    1
        # Log To Console   ${counter}
        R05_click_on_btn
        ${username}=    fetch_data_from_excel_robot.R04_Read_Cell_Value    ${location_name}    ${sheet_name}    ${counter}    1
        ${password}=    fetch_data_from_excel_robot.R04_Read_Cell_Value    ${location_name}    ${sheet_name}    ${counter}    2
        Log To Console    ${username}
        Log To Console    ${password}
        Input Text    name:_txtUserName    ${username}
        Input Text     name:_txtPassword     ${password}
        Click Element    xpath://input[@value='Login']
        Sleep    3 seconds
    END

# TC02_Click_Login_Input_Value
#     R05_click_on_btn
#     Sleep    5 seconds
    
    