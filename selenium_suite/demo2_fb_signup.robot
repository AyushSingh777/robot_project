*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register
    Open Browser    url=http://facebook.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    link=Create New Account
    Input Text    name=firstname    Ayush
    Input Text    name=lastname     Singh
    Input Password    id:password_step_input    hello123
    Select From List By Label    id:day     18
    Select From List By Label    id:month       Sep
    Select From List By Label    id:year        1998
    Click Element    xpath=//input[@value='2']
    Click Element    name=websubmit
    
