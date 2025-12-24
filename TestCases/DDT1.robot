*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/login_resources.robot
Suite Setup    Open My Browser
Suite Teardown    Close My Browser
Test Template    Invalid Login



*** Test Cases ***                            username            password
Right username Empty password            student                ${null}
Right username Wrong password            student                 xyz124
Wrong username Right password            xyz1345             Password123
Wrong username Wrong password           xyz1345               abc1234
Wrong username Empty password             dfg567                   ${null}


*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input User name    ${username}
    Input Pswd    ${password}
    Click Login Button
    Sleep    2
    Error Message Should be Visible









