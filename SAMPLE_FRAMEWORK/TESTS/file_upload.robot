*** Settings ***
Library   SeleniumLibrary

# importing re-usable data,keywords
Resource   ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}REUSE${/}reuse_data.robot
Resource   ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}REUSE${/}reuse_keywords.robot

# importing pages
Resource   ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}PAGES${/}file_upload_page.robot
Resource   ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}PAGES${/}home_page.robot

Suite Teardown    Close All Browsers

*** Variables ***
${UPLOAD_FILE}=    ${EXECDIR}${/}SAMPLE_FRAMEWORK${/}DATA${/}myfile.txt

*** Test Cases ***
Validate AB Testing
    [Documentation]    Test case to validate File upload page
    [Tags]    test-case
    Launch Internet Home Page
    Internet Home Page Should Be Loaded
    Click File Upload Link
    File Upload Page Should Be Loaded
    Sleep    2s
    Choose File To Upload    ${UPLOAD_FILE}
    Click Upload Button