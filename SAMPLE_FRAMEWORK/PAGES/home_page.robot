*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${home_page_header}=    tag:h1
${ab_testing_link}=    xpath://a[text()='A/B Testing']
${file_upload_link}=    xpath://a[text()='File Upload']

*** Keywords ***
Internet Home Page Should Be Loaded
    Wait Until Element Contains   ${home_page_header}    Welcome to the-internet

Click AB Testing Link
    Click Element    ${ab_testing_link}

Click File Upload Link
    Click Element    ${file_upload_link}