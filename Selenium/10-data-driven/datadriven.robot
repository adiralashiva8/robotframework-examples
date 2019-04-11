*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Data Driven Using Templates
    [Tags]    10A
    # Template are used to do data driven testing in rf
    # in order to use template mention template with keyword
    [Template]    Login With Multiple Data
    UserName1    Password1
    UserName2    Password2
    UserName3    Password3
    UserName4    Password4

*** Keywords ***
Login With Multiple Data
    [Arguments]    ${uname}    ${pwd}
    Open Browser    http://the-internet.herokuapp.com/login    chrome
    Input Text    id:username    ${uname}
    Input Text    id:password    ${pwd}
    Sleep   2s
    Close Browser