*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/login_resources.robot
Library    DataDriver     ../TestData/LoginData.xlsx    sheet_name=Sheet1
Suite Setup    Open My Browser
Suite Teardown    Close My Browser
Test Template    Invalid Login


*** Test Cases ***


*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input User name    ${username}
    Input Pswd    ${password}
    Click Login Button
    Sleep    2
    Error Message Should be Visible









