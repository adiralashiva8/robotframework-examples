*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Upload File In Webpage
    [Tags]    01
    # go to upload page
    Open Browser   http://the-internet.herokuapp.com/upload    chrome
    # upload file
    Choose File    id:file-upload    ${EXECDIR}${/}Selenium${/}01-upload-a-file${/}myfile.txt
    # click submit
    Click Element   id:file-submit
    # verify file uploaded
    Wait Until Element Contains   id:uploaded-files    myfile.txt