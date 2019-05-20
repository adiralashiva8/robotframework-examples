*** Settings ***
Library    DataDriver   ${EXECDIR}${/}DataDriven${/}LoginData.xlsx

Test Template    Validate Login With Different Data Set

*** Test Case ***
Validate Login With Different Data   DefaultUser   DefaultPassword

*** Keywords ***
Validate Login With Different Data Set
    [Arguments]    ${user_name}    ${password}
    Log   Login to App using username: ${user_name} and pwd: ${password}