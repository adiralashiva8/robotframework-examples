*** Settings ***
Library     SeleniumLibrary
Library     AngularJSLibrary    ignore_implicit_angular_wait=${True}

*** Test Cases ***
Validate XYZ Bank Login Page Loading
    Launch XYZ Bank Login Page
    Wait Until Element Is Visible    xpath://strong[text()='XYZ Bank']

*** Keywords ***
Launch XYZ Bank Login Page
    Open Browser    http://www.way2automation.com/angularjs-protractor/banking/#/login    chrome
    Location Should Contain    login
    # wait untill all the angular elements are loaded
    Wait For Angular