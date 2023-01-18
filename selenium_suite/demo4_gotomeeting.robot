*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser     url=https://www.goto.com/meeting/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    id:truste-consent-button
    Click Element    link:Try Free
    Input Text    name:FirstName    John
    Input Text    name:LastName    Wick
    Input Text    name:Email    john@gmail.com
    Select From List By Label    name:CompanySize       10 - 99
    Click Element    xpath://button[contains(text()='Start My Trial')]
    #Click Element    xpath://span[contains(text,'8 - 32 Characters')]
