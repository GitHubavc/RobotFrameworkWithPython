*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL1}   https://demowebshop.tricentis.com/register
${HOME_PAGE_TITLE1}    Demo Web Shop. Register
${URL2}   https://testautomationpractice.blogspot.com/
${HOME_PAGE_TITLE2}    Automation Testing Practice

*** Keywords ***
Open Multiple browsers
    Open Browser    ${URL1}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${HOME_PAGE_TITLE1}
    Open Browser    ${URL2}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${HOME_PAGE_TITLE2}


*** Test Cases ***
Registration Test and verify the waits
    Open Multiple browsers
    Close Browser    #closes the recent window
    Close All Browsers    #closes all browsers


