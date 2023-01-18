*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath://img[@src='gif/go.gif']
    ${alert_text}   Handle Alert    action=ACCEPT
    Log To Console      ${alert_text}
    Should Be Equal     ${alert_text}        Customer ID${SPACE}${SPACE}cannot be left blank.