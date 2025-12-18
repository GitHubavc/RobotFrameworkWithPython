*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${BROWSER}    chrome
${URL}   https://demo.guru99.com/test/newtours/

*** Test Cases ***
User Defined Keyword
    ${PageTitle}=    Launch Browse Maximize and Return Title   ${URL}    ${BROWSER}
    Log To Console    ${PageTitle}
    Input Text    name:userName    mercury
    Input Text    name:password    mercury
    Close Browser








