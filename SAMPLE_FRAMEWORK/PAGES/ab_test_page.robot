*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ab_page_header}=    tag:h3

*** Keywords ***
AB Testing Page Should Be Loaded
    Wait Until Element Contains   ${ab_page_header}    A/B