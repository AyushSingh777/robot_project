*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    &{dic}      Create Dictionary   buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=ayushpratapsingh_e58oLs
    ...     accessKey=SjyvZg9p8XLC9T1kWJJf


    Open Application    remote_url=https://hub.browserstack.com/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11 Pro
    ...     app=bs://9e6e191f5ca55c3481e3ac0bec8dd6a39cea1e8c
    ...     platFormVersion=13
    ...     bstack:options=${dic}

    Set Appium Timeout    20s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Username"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Username"]    standard_user
    Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]
    Input Password      xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]    secret_sauce
    Click Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]

   Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]
   Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]
   Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]
   Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]
   Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]/XCUIElementTypeOther
   Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
   Click Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
   Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-First Name"]
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-First Name"]    john
   Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]    jo
   Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]
   Input Text    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]    100022
   Click Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]
   Should Contain   xpath=//XCUIElementTypeStaticText[@label='Payment Information']   Payment Information

   ${app_source}           Get Source
   Log        ${app_source}
   [Teardown]      Close Application



