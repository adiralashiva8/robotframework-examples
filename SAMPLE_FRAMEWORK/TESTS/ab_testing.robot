*** Settings ***
Library   SeleniumLibrary

# importing re-usable data,keywords
Resource   ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}REUSE${/}reuse_data.robot
Resource   ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}REUSE${/}reuse_keywords.robot

# importing pages
Resource   ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}PAGES${/}ab_test_page.robot
Resource   ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}PAGES${/}home_page.robot

Suite Teardown    Close All Browsers

*** Test Cases ***
Validate AB Testing
    [Documentation]    Test case to validate AB Testing page
    [Tags]    test-case
    Launch Internet Home Page
    Internet Home Page Should Be Loaded
    Click AB Testing Link
    AB Testing Page Should Be Loaded

# Note: 
#    1. This file is called suite
#    2. You can write 'n' no. of test cases in suite file
