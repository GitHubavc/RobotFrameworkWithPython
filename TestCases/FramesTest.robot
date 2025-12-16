*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL2}   https://demo.automationtesting.in/Frames.html
${HOME_PAGE_TITLE2}    Frames

*** Keywords ***
Open the browser and verify Title
    Open Browser    ${URL2}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    ${HOME_PAGE_TITLE2}


*** Test Cases ***
Registration Test and verify the waits
    Open the browser and verify Title
    Select Frame    name:SingleFrame
    Input Text    xpath://input[@type='text']    How are you ?
    Unselect Frame
    Sleep    2
    Click Element    xpath://a[text()='Iframe with in an Iframe']
    Select Frame    xpath://iframe[@src='MultipleFrames.html']
    Select Frame    xpath://iframe[@src='SingleFrame.html']
    Input Text    xpath://input[@type='text']    I am fine !
    Unselect Frame
    Sleep    2
    Click Link    xpath://a[text()='Practice Site']
    Close Browser






