*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    [Documentation]     Working with native app
    ...     for automating sign up activity
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OnePlus Nord CE 2 Lite 5G
    #...     browserName=chrome
    #...     app=C:\\Users\\40032482\\Downloads\\khan-academy-7-3-2.apk
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true



     Run keyword And Ignore Error   Wait Until Page Contains Element    android=UiSelector().text("Dismiss")
     Run keyword And Ignore Error   Click Element     android=UiSelector().text("Dismiss")

     Wait Until Page Contains Element      android=UiSelector().description("Settings")    30s
     Click Element      android=UiSelector().description("Settings")

     Wait Until Page Contains Element    android=UiSelector().textContains("Sign in")     30s
     Click Element     android=UiSelector().textContains("Sign in")

     Wait Until Page Contains Element    android=UiSelector().textContains("Sign up with email")     30s
     Click Element     android=UiSelector().textContains("Sign up with email")

     Wait Until Page Contains Element    android=UiSelector().textContains("First name")     30s
     Input Text    android=UiSelector().textContains("First name")       Ayush


     Wait Until Page Contains Element    android=UiSelector().textContains("Last name")     30s
     Input Text     android=UiSelector().textContains("Last name")       Singh


     Wait Until Page Contains Element    android=UiSelector().textContains("Birthday")
     Click Element       android=UiSelector().textContains("Birthday")

     Wait Until Page Contains Element   android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)     30s
     Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
     Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
     Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)     Dec

     Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)     30s
     Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
     Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
     Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)        23

     Wait Until Page Contains Element   android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)     30s
     Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
     Click Element   android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
     Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)     2010

     Click Element    android=UiSelector().resourceId("android:id/button1")

     Wait Until Page Contains Element    android=UiSelector().textContains("Email address")  30s
     Input Text    android=UiSelector().textContains("Email address")  ayush123@gmail.com

     Wait Until Page Contains Element    android=UiSelector().textContains("Password")  30s
     Input Text    android=UiSelector().textContains("Password")  12345678

     Click Element    android=UiSelector().textContains("CREATE")

     Wait Until Page Contains Element    android=UiSelector().textContains("Unable")    30s
     Element Should Contain Text    android=UiSelector().textContains("Unable")    Unable to sign up

     Click Element    android=UiSelector().textContains("Cancel")

     [Teardown]     Close Application


TC2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OnePlus Nord CE 2 Lite 5G
    #...     browserName=chrome
    ...     app=C:\\Users\\40032482\\Downloads\\khan-academy-7-3-2.apk
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true

    Set Appium Timeout    20s

    Run Keyword And Ignore Error  Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']       30s
    Click Element    xpath=//android.widget.Button[@text='Search']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']       30s
    Click Element    xpath=//android.widget.TextView[@text='Arts and humanities']

    &{dic_arg}      Create Dictionary       strategy=-android uiautomator
    ...   selector=UiSelector().text("Art of Asia")
    Execute Script    mobile: scroll     &{dic_arg}
    Click Element    android=UiSelector().text("Art of Asia")

    ${dic_arg}  Create Dictionary  strategy=-android uiautomator
    ...     selector=UiSelector().text("Southeast Asia")
    Execute Script   mobile: scroll  &{dic_arg}

    Click Element    android=UiSelector().text("Southeast Asia")
