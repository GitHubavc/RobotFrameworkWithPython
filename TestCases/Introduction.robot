*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary.custom.DropdownKeywords

*** Variables ***
${BROWSER}    chrome
${URL}   https://testautomationpractice.blogspot.com/
${HOME_PAGE_TITLE}    Automation Testing Practice

*** Keywords ***
EnterTheDetails
    Input Text    xpath://input[@id='name']    Amit Chandran
    Input Text    xpath://input[@id='email']    amitvchandrantest1@gmail.com
    Input Text    xpath://input[@id='phone']    6755667877
    Input Text    xpath://textarea[@id='textarea']    This is the text area
    Click Element    xpath://input[@id='male']
    Click Element    xpath://input[@id='sunday']
    Click Element    xpath://input[@id='tuesday']

*** Test Cases ***
Open HomePage
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${HOME_PAGE_TITLE}
    EnterTheDetails
    ${values}=    Get All Entries    id=country
    Log    ${values}
    Close Browser

