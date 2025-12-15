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
    Set Selenium Speed    2

*** Test Cases ***
Testing RadioButtons and CheckBoxes
    Open HomePage And Verify Title
    #selecting Radio Buttons
    Select Radio Button    gender    male
    #selecting check box
    Select Checkbox    monday
    Select Checkbox    tuesday
    Unselect Checkbox    monday



