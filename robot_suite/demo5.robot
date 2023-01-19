*** Comments ***

C:\Users\40032482\AppData\Local\Temp

*** Settings ***
Library     OperatingSystem
Library    Collections
Library    String

*** Test Cases ***
TC1
   ${list}   List Files In Directory       path=C:\\Users\\40032482\\AppData\\Local\\Temp
   #Log To Console    ${list}
   #Log List     ${list}
   Log To Console    ${list}[0]
   
TC2
    Remove File    path=C:\Users\40032482\AppData\Local\Temp\wctEB7D.tmp
    File Should Not Exist    path=C:\Users\40032482\AppData\Local\Temp\wctEB7D.tmp
    
TC3
    File Should Exist    path=C:\Users\40032482\AppData\Local\Temp\TCD9D78.tmp

TC4
    ${name}     Set Variable       robot framework session
    #Log To Console    ${name}
    ${u_name}   Convert To Upper Case  ${name}
    Log To Console    ${u_name}
    ${final_str}    Remove String    ${u_name}      SESSION
    Log To Console    ${final_str}

TC5
    ${num1}     Set Variable       $200,100
    ${num2}     Set Variable       $200
    ${final_num1}    Remove String    ${num1}    $      ,
    ${final_num2}    Remove String    ${num2}    $
    Log To Console    ${final_num1}   
    Log To Console    ${final_num2}
    ${sum}  Evaluate    ${final_num1}+${final_num2}
    Log To Console    ${sum}

