### <ins> How to Write TestCases in BDD Framework </ins>

- in BDD Framework we need to write the Test Cases in Below BDD Framework
    - Given :-Whats your Current Position
    - When :-what all the action you want to perform
    - Then :-What are the verification you want to use

- In the Robot Framework also we can use the Gherkin Keywords

#### <ins> How to Write Test Cases in BDD Format for Robot Framework </ins>

- After Given,When,Then if we are using the user defined keywords then instead 
of writing with `2 spaces` we can use `1 space`
- when we use Given and When and Then  that behave as a single Keyword hence there will be `1 space ` Between them
- But while executing the the Given Keyword will be ignored as the robot framework does know what to do with the Gherkin Keyword
- Examples:-
    ```
    *** Settings ***

        Library       SeleniumLibrary

        *** Variables ***

        ${URL}    https://www.thetestingworld.com/testings/
        ${BROWSER}    Chrome

        *** Test Cases ***
        TC01_Inserting_To_TextBox_in_Robot
            Given RC01_Start_browser_window_command  ${URL}  ${BROWSER}
            ${TITLE}=    Get Title
            Log To Console    ${TITLE}
            When Input Text    name:fld_username    Pratik
            Then RC02_close_browser_window_command


        *** Keywords ***
        RC01_Start_browser_window_command
            [Arguments]  ${URL}  ${BROWSER}
            Open Browser  ${URL}  ${BROWSER}
            Maximize Browser Window
        RC02_close_browser_window_command
            Close All Browsers
    ```