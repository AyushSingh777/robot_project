*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    15s
    Go To    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default
    #Run Keyword And Ignore Error
    #Click Element    xpath=//input[text()='No Thanks']
    Input Text    name=authUser    admin
    Input Text    name=clearPass    pass
    Click Element    xpath=//select[@name='languageChoice']
    Select From List By Label    name=languageChoice  English (Indian)
    Click Element    login-button
    Mouse Over    xpath=//div[@role='button']
    Click Element    xpath=//div[text()='New/Search']
    Select Frame       xpath=//iframe[@name='pat']
    Input Text    name=form_fname    Naveen
    Input Text    name=form_lname    Chaurasiya
    Click Element    name=form_DOB
    Input Text    name=form_DOB    2023-01-24
    Click Element    name=form_sex    
    Click Element    xpath=//option[text()='Male']    
    Click Element    name=create
    Unselect Frame
    Select Frame    xpath=//iframe[@id='modalframe']

    Click Element    xpath=//input[@value='Confirm Create New Patient']

    ${alert_text}   Handle Alert    action=ACCEPT   timeout=30s
    Log To Console      ${alert_text}
    Should Contain     ${alert_text}        New Due Clinical Reminders

    Click Element    xpath=//div[@class='closeDlgIframe']
    Should Contain    xpath=//*[contains(text(),'Naveen Chaurasiya')]   Naveen Chaurasiya

    [Teardown]  Close Browser



    

    