*** Settings ***
Library   WhiteLibrary

*** Variable ***
${APPLICATION_PATH}=    C:/Windows/system32/notepad.exe

*** Test Cases ***
Perfrom Actions In Notepad
    Launch Notepad Application
    # need to write more stuff here

*** Keywords ***
Launch Notepad Application
    Launch Application    ${APPLICATION_PATH}
    # launch application takes some time to launch, sleep for while
    Wait For Some Time   5s
    Attach Window   text:Untitled - Notepad
