*** Settings ***
Library    SikuliLibrary
Library    SeleniumLibrary

Suite Teardown    Close All Browsers

*** Variables ***
${IMAGES_PATH}    ${CURDIR}${/}Images

*** Test Cases ***
Working With Click
    [Tags]    click
    # add image paths
    Add Image Paths Before Start

    # open chrome and perform right click
    Open Browser   https://www.google.com/    Chrome
    Sleep    5s

    # click on elipse of browser to demostrate sikuli out of browser
    Wait Until Screen Contain    elipse.png    10
    Click   elipse.png

Working With Entering Text
    [Tags]    text
     # add image paths
    Add Image Paths Before Start

    # open chrome and perform right click
    Open Browser   https://www.google.com/    Chrome
    Sleep    5s

    Click Element   name:q

    SikuliLibrary.Input Text    search.png   testng-metrics

    Press Special Key    ENTER

    Sleep   2s

Working With Drag And Drop
    [Tags]    dd
     # add image paths
    Add Image Paths Before Start

    # open chrome and perform right click
    Open Browser   https://the-internet.herokuapp.com/drag_and_drop    Chrome
    Sleep    5s

    SikuliLibrary.Drag And Drop    draga.png    dragb.png
    Sleep    2s

*** Keywords ***
Add Image Paths Before Start
    Add Image Path    ${IMAGES_PATH}