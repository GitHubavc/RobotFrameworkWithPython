*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://practicetestautomation.com/practice-test-login/
${BROWSER}    chrome

*** Keywords ***
Open My Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
Close My Browser
    Close All Browsers
Open Login Page
    Go To    ${LOGIN URL}
Input User name
    [Arguments]    ${username}
    Input Text    id:username    ${username}
Input Pswd
    [Arguments]    ${password}
    Input Text    id:password    ${password}
Click Login Button
    Click Button    Submit
Click Logout Link
    Click Link    Log out
Error Message Should be Visible
    Page Should Contain    Your username is invalid!
Dashboard page should be Visible
    Page Should Contain    Logged In Successfully




