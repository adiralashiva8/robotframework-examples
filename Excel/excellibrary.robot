*** Settings ***
Library    ExcelLibrary

*** Test Cases ***
Working With Existing Excel File
    [Tags]    existing

    # 'Open Excel' and `Open Excel Current Directory` are keyword's to open excel sheet
    Open Excel    ${EXECDIR}${/}Excel${/}Book.xls

    # get list of available sheets in workbook
    @{available_work_sheets}=    Get Sheet Names

    # column operation in specific sheet
    ${column_count}=    Get Column Count   Sheet1
    Should Be True    '${column_count}'=='2'

    # row operation in specific sheet
    ${row_count}=    Get Row Count   Sheet1
    Should Be True    '${column_count}'=='2'

    # read cell value by Name (Here B2 indiciates B for column 2 for row)
    ${name_value}=    Read Cell Data By Name    Sheet1    B2
    Should Be Equal As Strings    ${name_value}    Robot

    # read cell value by co-ordinates (1st column, 3rd row --> column and row starts with 0)
    ${password_value}=    Read Cell Data By Coordinates    Sheet1    1    2
    Should Be Equal As Strings    ${password_value}    Excel

Work With Creating New Workbook
    [Tags]    create
    # create new workbook with sheet
    Create Excel Workbook    TestSheet1

    # save above created work book
    Save Excel    ${EXECDIR}${/}Excel${/}Book1.xls

Adding Data In Excel
    [Tags]    add
    # open excel sheet
    Open Excel    ${EXECDIR}${/}Excel${/}Book1.xls

    # add content to sheet (column, row --> start from 0 index)

    ##############################################
    #
    # We have issue while writing content to excel
    # Reference: https://stackoverflow.com/questions/48292640/error-during-excelxls-write-operation
    # need to modify or use custom functions 
    #
    ##############################################

    Put String To Cell   TestSheet1   1   1   Key

    Put String To Cell   TestSheet1   2   1   Value

    Put String To Cell   TestSheet1   0   1   Password
    Put Number To Cell   TestSheet1   1   1   123456

    # adding one more sheet
    Add New Sheet    TestSheet2

    Save Excel    ${EXECDIR}${/}Excel${/}Book1.xls