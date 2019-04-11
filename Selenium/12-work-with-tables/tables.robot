*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Work With Table
    [Tags]   12
    Open Browser    http://the-internet.herokuapp.com/tables    chrome
    Wait Until Page Contains Element    id:table1

    # table header should conatin email
    Table Header Should Contain    id:table1    Email

    # get first cell value 
    ${first_table_cell}=    Get Table Cell    id:table1    2   1

    # validate first cell value
    Table Cell Should Contain    id:table1    2   1    ${first_table_cell}

    # sort table by last name
    Click Element    xpath://table[@id='table1']//thead//tr//span[text()='Last Name']

    # get first cell value 
    ${first_table_cell_after_sort}=    Get Table Cell    id:table1    2   1

    Should Not Be Equal   ${first_table_cell}    ${first_table_cell_after_sort}

    # get rows count
    ${count}=    Get Element Count    //table[@id='table1']//tbody//tr
    Log   No. of rows in table ${count}
    # if table consist of pagination -- click next and append count for total rows count