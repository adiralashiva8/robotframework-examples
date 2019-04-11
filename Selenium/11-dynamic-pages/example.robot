*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Wait For Page Text
    [Tags]    11
    Open Browser    http://the-internet.herokuapp.com/dynamic_loading/2    chrome
    Click Button   Start
    Wait Until Element Contains   id:finish    Hello World!    40s   Dynamic element not loaded in 40s