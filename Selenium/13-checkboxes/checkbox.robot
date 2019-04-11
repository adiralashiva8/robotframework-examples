*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Work With Checkbox
    [Tags]   13
    Open Browser    http://the-internet.herokuapp.com/checkboxes   chrome
    Checkbox Should Not Be Selected   xpath:(//input[@type='checkbox'])[1]
    Select Checkbox    xpath:(//input[@type='checkbox'])[1]
    Checkbox Should Be Selected   xpath:(//input[@type='checkbox'])[1]
    Unselect Checkbox   xpath:(//input[@type='checkbox'])[1]
    Checkbox Should Not Be Selected   xpath:(//input[@type='checkbox'])[1]