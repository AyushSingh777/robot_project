*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1 Sign Up
    [Documentation]     Working with native app
    ...     for automating sign up activity
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OnePlus Nord CE 2 Lite 5G
    #...     browserName=chrome
    ...     app=C:\\Users\\40032482\\Downloads\\khan-academy-7-3-2.apk
  
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']     30s
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Settings"]      30s
    Click Element    xpath=//android.widget.Button[@content-desc="Settings"]

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']    30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign up with email']    30s
    Click Element    xpath=//android.widget.TextView[@text='Sign up with email']

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='First name']    30s
    Click Element    xpath=//android.widget.EditText[@text='First name']
    Input Text     xpath=//android.widget.EditText[@text='First name']      Ayush

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Last name']    30s
    Click Element    xpath=//android.widget.EditText[@text='Last name']
    Input Text    xpath=//android.widget.EditText[@text='Last name']    Pratap
    
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Birthday']
    Click Element       xpath=//android.widget.TextView[@text='Birthday']
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']     30s
    Click Element    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Clear Text    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Input Text    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']    Dec

    Wait Until Page Contains Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]    30s
    Click Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Clear Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Input Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]        23

    Wait Until Page Contains Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]    30s
    Clear Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Click Element   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Input Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]    2010
    
    Click Element    xpath=(//android.widget.Button[@resource-id='android:id/button1'])
    
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc='Email address']    30s
    Input Text    xpath=//android.widget.EditText[@content-desc='Email address']     ayush123@gmail.com

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc='Password']    30s
    Input Text    xpath=//android.widget.EditText[@content-desc='Password']      123456
    
    Wait Until Page Contains Element    xpath=(//android.widget.TextView[@text='CREATE'])
    Click Element    xpath=(//android.widget.TextView[@text='CREATE'])
    
    #Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Invalid password']   30s
    #Element Should Contain Text    xpath=//android.widget.TextView[@text='Invalid']    Invalid password

    [Teardown]  Close Application

TC2
     Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OnePlus Nord CE 2 Lite 5G
    #...     browserName=chrome
    ...     app=C:\\Users\\40032482\\Downloads\\khan-academy-7-3-2.apk
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true
    
    #Wait Until Page Contains Element    xpath=//*[@text='Dismiss']     30s
    #Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']       30s
    Click Element    xpath=//android.widget.Button[@text='Search']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']     30s
    Click Element    xpath=//android.widget.TextView[@text='Arts and humanities']









