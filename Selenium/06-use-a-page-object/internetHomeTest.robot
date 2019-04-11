*** Settings ***
Library     SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

# following line imports all avilable keyword, variables to current page (inherit)
Resource    internetHomePage.robot
# you can import multiple files in page to achieve multiple in-heritance

*** Test Cases ***
Validate AB Testing Link
    [Tags]   06
    Launch Internet Home Page    http://the-internet.herokuapp.com/    Chrome
    Click AB Testing