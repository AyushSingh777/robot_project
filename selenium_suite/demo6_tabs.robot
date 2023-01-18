*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.db4free.net/
    Click Element    link:phpMyAdmin »
    Switch Window    phpMyAdmin
    Input Text    id=input_username    Ayush
    Input Text    id=input_password    ayush123
    Click Element    id=input_go
    Close Window