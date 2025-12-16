*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL1}   https://www.google.com/
${URL2}   https://www.bing.com/

*** Keywords ***
Open window and Maximize
    Open Browser    ${URL1}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
Navigation Commands
    Open window and Maximize
    ${LOCATION}=    Get Location
    Log To Console    ${LOCATION}
    Sleep    2
    Open Browser    ${URL2}    ${BROWSER}
    ${LOCATION}=    Get Location
    Log To Console    ${LOCATION}
    Sleep    3
    Go Back
    ${LOCATION}=    Get Location
    Log To Console    ${LOCATION}
    Sleep    2
    Close All Browsers














