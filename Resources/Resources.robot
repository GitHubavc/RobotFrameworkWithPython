*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Launch Browse Maximize and Return Title
    [Arguments]    ${appUrl}    ${appBrowser}
    Open Browser    ${appUrl}    ${appBrowser}
    Maximize Browser Window
    ${title}=    Get Title
    RETURN    ${title}


