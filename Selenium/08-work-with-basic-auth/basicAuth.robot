*** Settings ***
Library     SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Work With Basic Auth Test
    [Tags]   08
    # basic auth url - http://the-internet.herokuapp.com/basic_auth
    # user - admin
    # pwd - admin

    # when we navigate to http://the-internet.herokuapp.com/basic_auth a basic auth pop will be displayed
    # woar around to login is pass credentials in url as below
    Open Browser    http://admin:admin@the-internet.herokuapp.com/basic_auth    chrome
    Wait Until Element Contains    tag:p    Congratulations!