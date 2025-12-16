*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL2}   https://testautomationpractice.blogspot.com/
${HOME_PAGE_TITLE2}    Automation Testing Practice

*** Keywords ***
Open the browser and verify Title
    Open Browser    ${URL2}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${HOME_PAGE_TITLE2}


*** Test Cases ***
Registration Test and verify the waits
    Open the browser and verify Title
    Click Element    xpath://button[text()='Simple Alert']    #opens alert
    Sleep    2
    Handle Alert    accept
    Click Element    xpath://button[text()='Confirmation Alert']    #opens alert
    Sleep    2
    Handle Alert    dismiss
    Click Element    xpath://button[text()='Confirmation Alert']    #opens alert
    Sleep    2
    Alert Should Be Present    Press a button!



