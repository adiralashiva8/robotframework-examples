*** Settings ***
Library     SeleniumLibrary
Resource    ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}REUSE${/}reuse_data.robot

*** Keywords ***
Launch Internet Home Page
    Open Browser    ${APP_URL}    ${BROWSER}
    Wait Until Element Contains   tag:h1    Welcome to the-internet
