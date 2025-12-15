*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}   https://demo.nopcommerce.com/
${HOME_PAGE_TITLE}    nopCommerce demo store. Home page title

*** Test Cases ***
Open HomePage
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${HOME_PAGE_TITLE}
    Close Browser

