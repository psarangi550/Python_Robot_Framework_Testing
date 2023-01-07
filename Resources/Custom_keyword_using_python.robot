*** Settings ***

Library  String
Library  ../External_python/create_folder_sub_folder.py

*** Variables ***



*** Keywords ***
RC01_CREATE_FOLDER_AND_SUB_FOLDER
    [Arguments]  ${FOLDER_NAME}
    [Return]  ${RES}
    ${RES}=  create_folder  ${FOLDER_NAME}
    Log  ${RES}
