*** Settings ***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Working With Single Frame
    [Tags]    03A
    Open Browser    http://the-internet.herokuapp.com/tinymce    chrome
    # select iframe
    Select Frame   id:mce_0_ifr

    ${editor_text_before}=    Get Text    id:tinymce
    # clear text
    Clear Element Text    id:tinymce
    # input custom text
    Input Text    id:tinymce    Hello
    # get text
    ${editor_text_after}=    Get Text    id:tinymce
    # validate
    Should Not Be Equal   ${editor_text_before}    ${editor_text_after}

    Unselect Frame
    # following step should fail because trying to enter text without selecting frame
    Input Text    id:tinymce    Hello


Working With Nested Frames
    [Tags]    03B
    Open Browser    http://the-internet.herokuapp.com/nested_frames    chrome
    # switch to parent frame
    Select Frame    name:frame-top
    # switch to child frame present in parent frame
    Select Frame    name:frame-middle
    Wait Until Element Contains    id:content    MIDDLE