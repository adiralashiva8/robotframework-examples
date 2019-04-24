*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}=    http://www.demo.guru99.com/V4/index.php
${BROWSER}    Chrome
${USER_NAME}=    mngr191496
${PASSWORD}=    vAhAbUn

*** Test Cases ***
Scenario: Valid Login
    [Documentation]    Verify login with valid credentials in Guru99 website
    [Tags]    positive   smoke
    Given Guru99 Login Page Is Open
    When Valid Username And Password Are Inserted
    And Credentials Are Submitted
    Then Guru99 Home Page Should Be Opened

Scenario: InValid Login
    [Documentation]    Verify login with in-valid credentials in Guru99 website
    [Tags]    negative   regression
    Given Guru99 Login Page Is Open
    When InValid Username And Password Are Inserted
    And Credentials Are Submitted
    Then Guru99 Home Page Should Not Be Opened

*** Keywords ***
Guru99 Login Page Is Open
    Open Browser   ${URL}   ${BROWSER}
    Wait Until Element Is Visible   css:input[value='LOGIN']

Valid Username And Password Are Inserted
    Input Text   name:uid    ${USER_NAME}
    Input Text   name:password    ${PASSWORD}

InValid Username And Password Are Inserted
    Input Text   name:uid    ${USER_NAME}
    Input Text   name:password    ${PASSWORD}

Credentials Are Submitted
    Click Element    css:input[value='LOGIN']

Guru99 Home Page Should Be Opened
    Wait Until Page Contains    Welcome To Manager's Page of Guru99 Bank
    Location Should Contain    Managerhomepage

Guru99 Home Page Should Not Be Opened
    Wait Until Element Is Visible   css:input[value='LOGIN']