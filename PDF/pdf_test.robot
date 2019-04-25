*** Settings ***
# import custom library created to read pdf files
Library   ${EXECDIR}${/}PDF${/}pdf_lib.py

*** Variables ***
${PDF_PATH}=    ${EXECDIR}${/}PDF${/}GoodTestCase.pdf

*** Test Cases ***
Log Number Of Pages In Pdf File
    ${pages_count}=    Get Number Of Pages In Pdf    ${PDF_PATH}
    Log    ${pages_count}

Log Specific Page Text From Pdf File
    ${pdf_text}=    Get Specific Page Text In Pdf    ${PDF_PATH}   2
    Log    ${pdf_text}

Log Entire Pdf File Text
    ${pdf_text}=    Get Entire Pdf Text    ${PDF_PATH}
    Log    ${pdf_text}

Log Pdf Info
    ${pdf_info}=    Get Pdf Info    ${PDF_PATH}
    Log    ${pdf_info}