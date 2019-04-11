***Settings***
Library    SeleniumLibrary    timeout=20s
Test Teardown    Close Browser
Suite Teardown    Close Browser

*** Test Cases ***
Donwload File From Webpage
    [Tags]    02
    ${chromeOptions} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs} =    Create Dictionary    download.default_directory=${OUTPUTDIR}
    Call Method    ${chromeOptions}    add_experimental_option    prefs    ${prefs}

    Create Webdriver    Chrome    chrome_options=${chromeOptions}
    # go to upload page
    Go To    http://the-internet.herokuapp.com/download
    # click on file to download
    Click Element    css:.example a
    # wait for few seconds to download
    Sleep    4s

    # add custom validation here