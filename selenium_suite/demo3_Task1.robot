*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    url=https://www.salesforce.com/in/form/signup/freetrial-sales/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    name:UserFirstName    John
    Input Text    name:UserLastName    Wick
    Input Text    name:UserEmail    john@gmail.com
    Select From List By Label       name:UserTitle      IT Manager
    Select From List By Label    name:CompanyEmployees      101 - 500 employees
    Select From List By Label    name:CompanyCountry        United Kingdom
    Click Element    xpath://div[@class='checkbox-ui']
    Click Element    name:start my free trial
    Element Text Should Be    xpath://span[contains(@id,'UserPhone')]    Enter a valid phone number