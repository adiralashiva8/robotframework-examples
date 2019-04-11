*** Settings ***
Library    SeleniumLibrary    timeout=20s

*** Variables ***
# Locators
${internet_home_header}=    //h1[text()='Welcome to the-internet']
${ab_testing_link}=    //a[text()='A/B Testing']

*** Keywords ***
Launch Internet Home Page
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains Element    ${internet_home_header}

Click AB Testing
    Wait Until Page Contains Element    ${ab_testing_link}
    Click Element   ${ab_testing_link}