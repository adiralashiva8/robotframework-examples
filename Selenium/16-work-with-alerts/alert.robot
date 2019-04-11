*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Work With Checkbox
    [Tags]   16
    Open Browser    http://the-internet.herokuapp.com/javascript_alerts   chrome
    Sleep   2s
    # accept alert
    Click Button    Click for JS Alert
    Alert Should Be Present    I am a JS Alert
    Sleep   2s

    # dismiss alert
    Click Button    Click for JS Confirm
    Handle Alert    action=DISMISS
    Sleep   2s

    # input Text Into Alert
    Click Button    Click for JS Prompt
    Input Text Into Alert    Robotframework
    Sleep   2s

