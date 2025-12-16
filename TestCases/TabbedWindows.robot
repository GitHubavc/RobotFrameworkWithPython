*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}   https://demo.automationtesting.in/Windows.html

*** Keywords ***
Open the URL and Maximize
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
Tabbed Window Test
    Open the URL and Maximize
    Click Button    xpath://*[@id="Tabbed"]/a/button
    Switch Window    title:Selenium
    Click Link    xpath://*[@id="main_navbar"]/ul/li[3]/a
    sleep    2
    Switch Window    title:Frames & windows
    Click Link    xpath://ul[@class='nav navbar-nav']/li[1]/a
    sleep    2
    Close All Browsers






