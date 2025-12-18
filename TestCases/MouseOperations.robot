*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}   https://codepen.io/adobewordpress/pen/YPyGea


*** Keywords ***
Open the browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window



*** Test Cases ***
Verify Mouse actions
    #open right click action
    Open the browser
#    Open Context Menu    xpath:/html/body/span/text()
    Sleep    3
#    double click
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    Sleep    3
#    Drag And Drop
    Drag And Drop    id:draggable    id:droppable










