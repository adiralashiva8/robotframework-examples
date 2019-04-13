*** Settings ***
# RequestsLibrary for REST API
Library    RequestsLibrary
# other library
Library    Collections
Library    String

*** Test Cases ***
Working With Basic Authentication
    [Documentation]    usage of Basic Auth using GET method
    [Tags]    auth

    # in-order to perform basic auth user name and pwd need to be passed
    ${auth}=    Create List    postman    password

    # to use basic auth mention in header
    &{headers}=    Create Dictionary    Content-Type=application/json    Authorization=Basic

    # create session with headers and auth
    Create Session    postman    https://postman-echo.com    headers=${headers}    auth=${auth}

    ${response}=   Get Request   postman    /basic-auth

    Should Be Equal As Strings    ${response.status_code}    200

    Should Be Equal As Strings    ${response.json()['authenticated']}    True


Working With GET Method
    [Documentation]    usage of GET method
    [Tags]    get

    Create Session    dummyapi    http://dummy.restapiexample.com/api/v1

    ${response}=    Get Request   dummyapi    /employees

    Should Be Equal As Strings    ${response.status_code}    200

    ${json_size}=    Get Length    ${response.json()}

    Should Be True    '${json_size}'>'0'


Working With POST Method
    [Documentation]    usage of POST method
    [Tags]    post

    Create Session    dummyapi    http://dummy.restapiexample.com/api/v1

    ${user}=    Generate Random String    8    [LOWER]

    &{data}=    Create Dictionary
    ...    name=rf${user}
    ...    salary=1000000000000
    ...    age=14

    ${response}=    Post Request    dummyapi    /create    json=${data}

    # status code should be 200
    Should Be Equal As Strings    ${response.status_code}    200

    # get newly created user id and save it has suite variable
    # which can be used in put and delete methods
    Set Suite Variable   ${new_user_id}    ${response.json()['id']}

Working With PUT Method
    [Documentation]    usage of PUT method
    [Tags]    put

    Create Session    dummyapi    http://dummy.restapiexample.com/api/v1

    ${user}=    Generate Random String    8    [LOWER]

    &{data}=    Create Dictionary
    ...    name=rf${user}
    ...    salary=1000000000000
    ...    age=14

    # here 
    ${response}=    Put Request    dummyapi    /update/${new_user_id}    json=${data}

    # status code should be 201
    Should Be Equal As Strings    ${response.status_code}    200

    # validate user got updated
    Should Be Equal As Strings    ${response.json()['name']}    rf${user}


Working With DELETE Method
    [Documentation]    usage of DELETE method
    [Tags]    delete

    Create Session    dummyapi    http://dummy.restapiexample.com/api/v1

    # here we are deleting ${new_user_id} created in post method
    ${response}=    Delete Request    dummyapi    /delete/${new_user_id}

    # status code should be 200
    Should Be Equal As Strings    ${response.status_code}    200

    # validate user got updated
    Should Be Equal As Strings    ${response.json()['success']['text']}    successfully! deleted Records