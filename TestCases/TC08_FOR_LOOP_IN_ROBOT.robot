*** Settings ***

Library     SeleniumLibrary
Library     Collections

*** Variables ***
@{List1}    10  20  30  40  50

*** Test Cases ***
USING_THE_FOR_LOOP_WITH_RANGE_AND_STEP
    FOR    ${val}    IN RANGE    1    11    1
        Log To Console    ${val}

    END

USING_FOR_LOOP_FOR_FETCHING_LIST_VALUE
    FOR    ${Item}    IN    @{List1}
        Log    ${item}

    END
USING_FOR_LOOP_FOR_FETCHING_LIST_VALUE_ALTER
    @{List2}=   Set Variable    50  60  70  80
    FOR     ${Item}     IN      @{List2}
       Log To Console  ${Item}
    END
USING_FOR_LOOP_FOR_FETCHING_LIST_VALUE_ANOTHER_ALTER
    @{List3}=   Set Variable    50  60  70  80
    FOR     ${Item}     IN      @{List3}
        Log To Console  ${Item}
    END

*** Keywords ***


*** Comments ***
#for FOR a Tab Space is required
#for FOR END block is mandetory
#inside the for loop we can use the code by giving a Tab Space