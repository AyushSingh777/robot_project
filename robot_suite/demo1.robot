*** Settings ***
Library     DateTime
*** Test Cases ***
TC1
    Log To Console  message=Ayush
    Log To Console  hello

TC2
    ${my_name}      Set Variable    Ayush
    Log To Console    ${my_name}

TC3
   ${Today_date}    Get Current Date
   Log To Console    ${Today_date}
   
TC4
    ${radius}     Set Variable  10
    ${area}       Evaluate  ${radius}*${radius}*3.14
    Log To Console    ${area}
