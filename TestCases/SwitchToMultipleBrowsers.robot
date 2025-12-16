*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL1}   https://www.google.com/
${URL2}   https://www.bing.com/

*** Keywords ***
Open 2 windows and Maximize
    Open Browser    ${URL1}    ${BROWSER}
    Maximize Browser Window
    sleep    2
    Open Browser    ${URL2}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
Validate Multiple window switching
    Open 2 windows and Maximize
    Switch Browser    1
    ${TITLE_GOOGLE}=    Get Title
    Log To Console    ${TITLE_GOOGLE}
    Switch Browser    2
    ${TITLE_BING}=    Get Title
    Log To Console    ${TITLE_BING}
    Close All Browsers












