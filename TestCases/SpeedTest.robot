*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}   https://demowebshop.tricentis.com/register
${HOME_PAGE_TITLE}    Demo Web Shop. Register

*** Keywords ***
Open HomePage And Verify Title
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${HOME_PAGE_TITLE}
    ${SPEED}=    Get Selenium Speed
    Log To Console    ${SPEED}
    Set Selenium Speed    1 seconds

Fill in the Details for Registeration
    Select Radio Button    Gender    M
    Input Text    name:FirstName    Amith
    Input Text    name:LastName    Kumar
    Input Text    name:Email    avc456@email.com
    Input Text    name:Password    LessTest123
    Input Text    name:ConfirmPassword    LessTest123

*** Test Cases ***
Registration Test and verify the waits
    Open HomePage And Verify Title
    Fill in the Details for Registeration
    ${NEW_SPEED}=    Get Selenium Speed
    Log To Console    ${NEW_SPEED}
