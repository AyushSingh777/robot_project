*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser        browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.medibuddy.in
    Click Element   link=Login
    Click Element   xpath=//div[@class='coperate']
    Click Element   xpath=//div[@class='coperate']
    Input Text    name:userName    John
    Click Element    xpath=//button[@class='btn btn-primary']
    Input Text    name:password    john123
    Click Element    xpath=//input[@type='checkbox']
    Click Element    xpath=//button[@type='submit']
    #Element Text Should Be      xpath=//*[contains(text(),'')]       You have entered incorrect password. If you forgot the password please reset your password by clicking on the forgot password link.
    Element Should Contain    xpath=//*[contains(text(),'incorrect password')]    You have entered incorrect password.