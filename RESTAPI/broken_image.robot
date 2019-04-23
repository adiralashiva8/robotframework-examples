*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Collections
Library    String

*** Test Cases ***
Validate Broken Image
    # Broken images are validated by knowing the status of image
    # Here we are using Request library to know the status of image

    Create Session    broken    https://the-internet.herokuapp.com

    ${response}=    Get Request   broken    /asdf.jpg

    Should Be Equal As Strings    ${response.status_code}    200    asdf.jpg is not found or broken and its status is ${response.status_code}\n


Validate Broken Images In Page
    # go to application under test
    Open Browser   https://the-internet.herokuapp.com/broken_images    chrome
    Sleep   2s

    # get list of image tags in page
    ${img_count}=    Get Element Count    tag:img

    # get available image tags src and store in list
    @{img_src}=    Create List
    :FOR    ${img}    IN RANGE   1   ${img_count+1}
        \   ${index}=    Convert To Integer   ${img}
        \   ${src}=    Get Element Attribute    (//img)[${index}]    src
        \   Append To List   ${img_src}    ${src}
    
    # validate image status
    :FOR    ${img}    IN    @{img_src}
        \    Create Session    broken_image    ${img}
        \    ${response}=    Get Request   broken_image    /
        \    Log   ${response}
        \    # Add you validation here like
        \    # Should Be Equal As Strings    ${response.status_code}    200
