*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${BROWSER}    chrome
${URL}   https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
Scrolling Page Validation
    ${PageTitle}=    Launch Browse Maximize and Return Title   ${URL}    ${BROWSER}
    Log To Console    ${PageTitle}
#    Execute Javascript    window.scrollTo(0,2500)    #to scroll down
#    Scroll Element Into View    xpath://img[@alt='Flag of India']
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)    #end page scrolling
    Sleep    5
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    #top page scrolling
    Sleep    5
    Close Browser








