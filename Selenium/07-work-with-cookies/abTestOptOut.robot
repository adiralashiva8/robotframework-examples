*** Settings ***
Library     SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
With Cookie After Visiting Page
    [Tags]    07A
    Open Browser    http://the-internet.herokuapp.com/abtest    chrome
    Wait Until Element Contains   tag:h3    A/B Test
    Add Cookie    optimizelyOptOut    true
    Reload Page
    Wait Until Element Contains   tag:h3    No A/B Test
    ${cookies} =    Get Cookies
    Delete Cookie    optimizelyOptOut
    Reload Page
    Wait Until Element Contains   tag:h3    A/B Test

With Cookie Before Visiting Page
    [Tags]    07B
    Open Browser    http://the-internet.herokuapp.com/    chrome
    Add Cookie    optimizelyOptOut    true
    Go To   http://the-internet.herokuapp.com/abtest
    Wait Until Element Contains   tag:h3    No A/B Test