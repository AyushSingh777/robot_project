*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']    C:/Users/40032482/Downloads/Sample.pdf
    Sleep    5s
TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.facebook.com/
    Input Text    css=#email    Jack
    Input Password    css=#pass    pass123
    Click Element    css=button[name='login']

TC3
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://phptravels.net/
    Click Element    id=select2-hotels_city-container
    Input Text    xpath=//span[contains(text(),'Search by City']    Vadodara
    Click Element    xpath=//li[contains(text(),'Vadodara,Ind']
    Execute Javascript      document.querySelector('#checkin').value='31-10-2023'
    Execute Javascript      document.querySelector('#checkout').value='29-11-2023'
    Sleep    5s

TC4
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.redbus.in/
    Input Text    id=src    Central Bus Station, Vadodara
    Input Text    id=dest   Kashmiri Gate, Delhi
    