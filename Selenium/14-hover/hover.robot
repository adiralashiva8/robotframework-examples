*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Work With Mouse
    [Tags]   14
    Open Browser    http://the-internet.herokuapp.com/hovers   chrome
    Sleep   2s
    Mouse Over    (//img[@alt='User Avatar'])[1]
    Wait Until Element Is Visible   //h5[text()='name: user1']