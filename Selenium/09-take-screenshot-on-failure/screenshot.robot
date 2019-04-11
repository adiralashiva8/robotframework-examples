*** Settings ***
# when a test fail's 'Capture Full Page' keyword will be executed
# run_on_failure=Capture Full Page will be executed when test fails
Library     SeleniumLibrary    timeout=20s   run_on_failure=Capture Full Page
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Capture Full Page Screenshot On Test Failure
    [Tags]   09
    Open Browser    http://the-internet.herokuapp.com/    chrome
    Wait Until Page Contains   Robotframework

*** Keywords ***
Capture Full Page
    # compatible with seleniumlibrary 3.3 and above
    # chromedriver need to be comatible
    Capture Element Screenshot    tag:body