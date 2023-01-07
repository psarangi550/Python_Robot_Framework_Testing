*** Settings ***

Resource  ../Resources/Custom_keyword_using_python.robot


*** Variables ***

${FOLDER_NAME}  RobotTest

*** Test Cases ***
TC01_TEST_USER_DEFINED_KEY_WITH_ARGS_AND_RETURN_VALUE
    RC01_CREATE_FOLDER_AND_SUB_FOLDER  ${FOLDER_NAME}


*** Keywords ***
