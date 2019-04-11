*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Multiple Windows In Webpage
    [Tags]    04A
    Open Browser    http://the-internet.herokuapp.com/windows    chrome
    Click Link    Click Here

    # switch to newly opened window
    Select Window    NEW
    # validate text in new window
    Wait Until Page Contains   New Window
    # close new window
    Close Window
    # switch to default window
    Select Window   MAIN
    # reloading in current page once switch back
    Reload Page

Multiple Windows In Webpage Using Handles
    [Tags]    04B
    Open Browser    http://the-internet.herokuapp.com/windows    chrome
    Click Link    Click Here

    @{list_of_windows}=    Get Window Handles
    # switch to newly opened window
    Select Window    @{list_of_windows}[1]
    # validate text in new window
    Wait Until Page Contains   New Window
    # close new window
    Close Window
    # switch to default window
    Select Window   @{list_of_windows}[0]
    # reloading in current page once switch back
    Reload Page
