*** Settings ***
Library    ${EXECDIR}${/}Selenium${/}17-custom-libraries${/}MyLibrary.py
Library    SeleniumLibrary
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Case ***
Go To Blog Using Driver From Python File
    Open Browser    http://www.google.com    chrome
    # a keyword added in python which navigates to blog using driver initiated in robot-framework
    Go To Blog