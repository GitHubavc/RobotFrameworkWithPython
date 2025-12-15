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
    Set Selenium Speed    500milliseconds

*** Test Cases ***
Validating DropDowns And Lists
    Open HomePage And Verify Title
    Select From List By Label    country    Canada
    Select From List By Index    country    7
    Select From List By Value    country    germany
    Select From List By Label    colors    Blue
    Select From List By Label    colors    Yellow
    Unselect From List By Label    colors    Blue




