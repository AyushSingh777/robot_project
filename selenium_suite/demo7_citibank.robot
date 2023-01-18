*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error    Click Element    xpath://a[@title='Close']
    Click Element    xpath://span[@class='txtSign']
    Switch Window   Citibank India
    Click Element    xpath://div[@onclick='ForgotUserID();']
    Click Element    xpath://a[@class='sbSelector']
    Click Element    link:Credit Card
    Input Text     id=citiCard1     4545
    Input Text     id=citiCard2     5656
    Input Text     id=citiCard3     8887
    Input Text     id=citiCard4     9998
    Input Text     id=cvvnumber     758
    Click Element   name:DOB
    Select From List By Label       xpath=//select[@class='ui-datepicker-year']     2022
    Select From List By Label      xpath=//select[@class='ui-datepicker-month']     Apr
    Click Element    link=14
    Click Element    xpath=//input[@value='PROCEED']
    Element Should Contain    id=ui-id-1    Please accept Terms and Conditions
    Close Browser


