*** Settings ***
Library    Collections
*** Variables ***
${BROWSER_NAME}     chrome
${MOBILE_NUM}       898989
@{COLORS}   red green   yellow
&{MY_DETAILS}       name=tunny      role=trainer        mobile=98987654

*** Test Cases ***

TC1
    ${my_name}      Set Variable    Ayush
    Log To Console    ${my_name}
    Log To Console    ${BROWSER_NAME}
    
TC2
    Log To Console    ${COLORS}[1]
    Log To Console    ${COLORS}

TC3
    ${item_count}   Get Length    ${COLORS}
    Log To Console      ${item_count}

TC4
    @{fruits}       Create List     apple       orange      mango
    Log To Console    ${fruits}[1]
    Append To List    ${fruits}     grapes
    #Log To Console    ${fruits}
    Remove Values From List    ${fruits}      apple
    #Log To Console    ${fruits}
    Insert Into List    ${fruits}    1    pineapple
    #Log To Console    ${fruits}
    ${len}      Get Length    ${fruits}
    Log To Console    ${len}
    Log    ${fruits}

TC5
    FOR    ${i}    IN RANGE    1    11

        Log To Console    ${i}

    END


TC6
    ${fruits}      Create List      orange  mango   apple   pineapple   kiwi
    ${count}    Get Length    ${fruits}
    Log To Console    ${count}
    FOR    ${i}    IN RANGE    0    ${count}
        Log To Console    ${fruits}[${i}]

    END

TC7
    ${fruits}      Create List      orange  mango   apple   pineapple   kiwi
    FOR    ${fruit}    IN    @{fruits}
        Log To Console    ${fruit}

    END

TC8
    Log To Console    ${MY_DETAILS}[mobile]
    
TC9
    &{emp_dic}      Create Dictionary       emp_id=107      emp_name=tunny      role=gea
    Log To Console    ${emp_dic}[emp_id]

