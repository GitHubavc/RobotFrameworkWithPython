*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}   https://testautomationpractice.blogspot.com/
${HOME_PAGE_TITLE}    Automation Testing Practice

*** Keywords ***
Open HomePage And Verify Title
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${HOME_PAGE_TITLE}

*** Test Cases ***
Verify InputBox
    Open HomePage And Verify Title
    ${"name_text"}    Set Variable    id:name
    Element Should Be Visible    ${"name_text"}
    Element Should Be Enabled    ${"name_text"}
    Input Text    ${"name_text"}    Amit Chandran
    Sleep    3
    Clear Element Text    ${"name_text"}
    Sleep    3
    Close Browser
