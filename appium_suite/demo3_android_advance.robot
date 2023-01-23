*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OnePlus Nord CE 2 Lite 5G
    #...     browserName=chrome
    ...     app=C:\\Users\\40032482\\Downloads\\khan-academy-7-3-2.apk
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true

    Set Appium Timeout    20s

    Run Keyword And Ignore Error  Wait Until Page Contains Element    xpath=//*[@text='Dismiss']    30s
    Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']       30s
    Click Element    xpath=//android.widget.Button[@text='Search']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']       30s
    Click Element    xpath=//android.widget.TextView[@text='Arts and humanities']

    ${count}    Get Matching Xpath Count    xpath=//android.widget.TextView[@text='Art of Asia']
    WHILE    ${count}==0
        Swipe By Percent    90   75    90    25
        ${count}    Get Matching Xpath Count    xpath=//android.widget.TextView[@text='Art of Asia']
    END

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Art of Asia']    30s
    Click Element    xpath=//android.widget.TextView[@text='Art of Asia']

     ${count}    Get Matching Xpath Count    xpath=//android.widget.TextView[@text='South Asia']
    WHILE    ${count}==0
        Swipe By Percent    90   75    90    25
        ${count}    Get Matching Xpath Count    xpath=//android.widget.TextView[@text='South Asia']
    END

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='South Asia']     30s
    Click Element    xpath=//android.widget.TextView[@text='South Asia']

    ${count}    Get Matching Xpath Count    xpath=//android.widget.TextView[@text='The Taj Mahal']
    WHILE    ${count}==0
        Swipe By Percent    90   75    90    25
        ${count}    Get Matching Xpath Count    xpath=//android.widget.TextView[@text='The Taj Mahal']
    END

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='The Taj Mahal']      30s
    Click Element    xpath=//android.widget.TextView[@text='The Taj Mahal']

    Wait Until Page Contains Element    xpath=//*[contains(@text,'fifth')]      30s
    Element Should Contain Text    xpath=//*[contains(@text,'fifth')]    fifth ruler


    [Teardown]     Close Application

TC2

    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=OnePlus Nord CE 2 Lite 5G
    #...     browserName=chrome
    #...     app=C:\Users\40032482\Downloads\com.poshmark.app_2023-01-17.apk
    ...     appPackage=com.poshmark.app
    ...     appActivity=com.poshmark.ui.Library.MainActivity
    ...     noReset=true

    Set Appium Timeout    20s

    #Run Keyword And Ignore Error  Wait Until Page Contains Element    xpath=//*[@text='Dismiss']    30s
    #Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Continue with Phone Number']       30s
    Click Element    xpath=//android.widget.Button[@text='Continue with Phone Number']


    [Teardown]     Close Application
