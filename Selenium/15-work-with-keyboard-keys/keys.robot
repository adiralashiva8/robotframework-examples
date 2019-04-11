*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Work With Keys
    [Tags]   15
    Open Browser    http://the-internet.herokuapp.com/key_presses   chrome
    # from selenium 3.3 its Press Keys for below 3.3 it is Press Key
    Press Keys   class:example    CTRL
    Wait Until Element Contains   id:result    You entered: CONTROL