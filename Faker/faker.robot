*** Settings ***
Library    FakerLibrary
Library    String

*** Test Cases ***
Generate Dummy Test Data
    # generate random words
    @{dummy_words}=   Generate Random Words    5
    Log Many    @{dummy_words}

    # generate random pargraph of custom length
    ${dummy_para}=   Generate Random Paragraph    255
    Log    ${dummy_para}

    # generate random address
    ${random_address}=    FakerLibrary.Address
    Log    ${random_address}


*** Keywords ***
Generate Random Words
    [Arguments]   ${no_of_words}
    ${words}=    FakerLibrary.Words    ${no_of_words}
    [Return]    ${words}

Generate Random Paragraph
    [Arguments]   ${no_of_words}    ${no_of_sentences}=10
    # to generate more no of words increase ${no_of_sentences} value.
    # By default it will generate 10 paragraphs
    ${raw_paragraph}=    FakerLibrary.Paragraph    ${no_of_sentences}

    ${no_of_words}=    Convert To Integer   ${no_of_words}
    ${custom_para}=   Get Substring    ${raw_paragraph}    ${no_of_words}

    [Return]   ${custom_para}