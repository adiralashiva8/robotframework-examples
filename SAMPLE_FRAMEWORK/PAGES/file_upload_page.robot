*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${file_upload_page_header}=    tag:h3
${file_upload_choose_file}=    id:file-upload
${file_upload_upload_button}=    id:file-submit

*** Keywords ***
File Upload Page Should Be Loaded
    Wait Until Element Contains   ${file_upload_page_header}    File Uploader

Choose File To Upload
    [Arguments]    ${file}
    Choose File    ${file_upload_choose_file}    ${file}

Click Upload Button
    Click Element    ${file_upload_upload_button}