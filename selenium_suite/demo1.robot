*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    url=http://google.com/      browser=chrome
    ${actual_title}     Get Title
    Log To Console    ${actual_title}
    Log     ${actual_title}
    Should Be Equal    ${actual_title}    Google
    
TC2
     Open Browser    url=http://google.com/      browser=chrome
     Title Should Be    Google

TC3
    Open Browser    url=http://facebook.com/      browser=chrome
    Input Text    locator=id:email    text=hello@gmail.com
    Input Password    id:pass       welcome@123
    Click Element    name:login
TC4
    Open Browser    url=https://www.db4free.net/phpMyAdmin/  browser=chrome
    Input Text      input_username   hello@gmail.com
    Input Password      input_password   welcome@123
    Click Element       input_go