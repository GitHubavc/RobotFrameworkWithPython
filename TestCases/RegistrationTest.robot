*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}    headlesschrome
${SiteUrl}    https://demo.guru99.com/test/newtours/index.php

*** Test Cases ***
Registration Test
    Open My Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName    David
    Enter LastName    John
    Enter PhoneNumber    7688566546
    Enter Email    davidj@email.com
    Enter Address    Toronto Canada
    Enter City    Toronto
    Enter State    Branpton
    Enter PostalCode    L3F 1E7
    Enter Country    CANADA
    Sleep    3
    Enter UserName    johnxyz
    Enter Password    johnxyz
    Enter Confirmed Password    johnxyz
    Sleep    3
    Click Submit
    Sleep    3
    Verify Sucessful Registration
    Sleep    3
    Close my Browsers



