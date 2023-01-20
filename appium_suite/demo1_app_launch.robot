*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OnePlus Nord CE 2 Lite 5G
    #...     browserName=chrome
    ...     app=C:\\Users\\40032482\\Downloads\\khan-academy-7-3-2.apk

    ${page_source}      Get Source
    Log To Console    ${page_source}
    Sleep    5s
    Close Application

TC2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OnePlus Nord CE 2 Lite 5G
    #...     browserName=chrome
    ...     app=C:\\Users\\40032482\\Downloads\\khan-academy-7-3-2.apk
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']     30s
    Click Element    xpath=//*[@text='Dismiss']


    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']    30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']    30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']    30s
    Click Element    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']
    Input Text    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']    ayush
    Click Element    xpath=//android.widget.EditText[@text='Password']
    Input Text    xpath=//android.widget.EditText[@text='Password']    123456
    
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Sign in"]      30s
    Click Element    xpath=//android.widget.Button[@content-desc="Sign in"]
    
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='There was an issue signing in'] 
    Element Should Contain Text    xpath=//android.widget.TextView[@text='There was an issue signing in']    There was an issue signing in
    
    Sleep    5s
    [Teardown]      Close Application