*** Settings ***
# library name is case sensitive
Library    OpenPyxlLibrary

*** Test Cases ***
Working With Existing Excel File
    [Tags]    existing

    # 'Open Excel' is to open excel sheet
    Open Excel    ${EXECDIR}${/}Excel${/}Book2.xlsx 

    # get list of available sheets in workbook
    @{available_work_sheets}=    Get Sheet Names

    # column operation in specific sheet
    ${column_count}=    Get Column Count   Sheet1
    Should Be True    '${column_count}'=='2'

    # row operation in specific sheet
    ${row_count}=    Get Row Count   Sheet1
    Should Be True    '${column_count}'=='2'

    # read cell value by co-ordinates (2nd row, 2nd column --> column and row starts with 1)
    ${name_value}=    Read Cell Data By Coordinates    Sheet1    2    2
    Should Be Equal As Strings    ${name_value}    Robot

Work With Creating New Workbook
    [Tags]    create
    # We could not create new work book, but we can clone (copy) existing work book
    # open exisitng work book
    Open Excel    ${EXECDIR}${/}Excel${/}Book2.xlsx
    # save exisitng work book as new file 
    Save Excel    ${EXECDIR}${/}Excel${/}Book3.xlsx

Adding Data In Excel
    [Tags]    add
    # open excel sheet
    Open Excel    ${EXECDIR}${/}Excel${/}Book3.xlsx

    # add new sheet to book3
    Add New Sheet    TestSheet1

    # add data to sheet
    Write Data By Coordinates    TestSheet1    1    1    Robot

    # save sheet
    Save Excel    ${EXECDIR}${/}Excel${/}Book3.xlsx

