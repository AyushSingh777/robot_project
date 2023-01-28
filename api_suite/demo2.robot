*** Settings ***
Library  RequestsLibrary
Library    OperatingSystem
Suite Setup  Create Session    alias=pet shop    url=https://petstore.swagger.io/v2
*** Test Cases ***
TC1 Get pet
    [Tags]      smoke    high
   #Create Session    alias=pet shop    url=https://petstore.swagger.io/v2
    ${response}  GET On Session    alias=pet shop    url=pet/500199
    Status Should Be    200
TC2 pet not found
    [Tags]      low
    #Create Session    alias=pet shop    url=https://petstore.swagger.io/v2
    ${response}  GET On Session    alias=pet shop    url=pet/102   expected_status=404
    Status Should Be    404
    ${response_body}  Convert To String    ${response.json()}
    Should Contain    ${response_body}    Pet not found
TC3 get query string
    [Tags]      high
    ${response}  GET On Session    alias=pet shop    url=pet/findByStatus?status=sold
    Status Should Be    200
    Log    ${response.json()}
    Log    ${response.json()}[0][id]
TC4 ADD pet
    [Tags]      smoke low
    ${json}  Get Binary File  path=${EXECDIR}${/}test_data${/}data.json
    &{headers}  Create Dictionary  content-type=application/json
    ${response}  POST On Session  alias=petshop  url=pet  data=${json}  headers=${headers}
    Status Should Be    200
    Log    ${response.json()}
TC5 Delet Pet
    ${response}  GET On Session    alias=petshop     url=pet/500199
    Status Should Be    200
    log ${response}
TC6 Delete pet not found
   ${response}  DELETE On Session  alias=petshop   url=pet/40111   expected_status=404
   Status Should Be    404
   Log    ${response.json()}

    