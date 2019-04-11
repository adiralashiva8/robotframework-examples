*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Select Value From Drop Down
    [Tags]    05
    Open Browser    http://the-internet.herokuapp.com/dropdown   chrome
    
    # select from list using value
    Select From List By Value    id:dropdown    1

    # select from list using label (visible text)
    Select From List By Label    id:dropdown    Option 2

    # select from list using index
    Select From List By Index    id:dropdown    1

    # even use can select multiple values for multi select picklist (dropdown)
    # by simply passing mutliple arguments
    # Select From List By Label    id:dropdown    Option 2    Option1

    # want to select all values in mutliple select picklist (drop down)
    # Select All From List    id:dropdown