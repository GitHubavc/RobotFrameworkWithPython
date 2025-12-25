*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${SiteUrl}    ${Broswer}
    Open Browser    ${SiteUrl}    ${Broswer}
    Maximize Browser Window

Click Register Link
    Click Link    ${link_Reg}

Enter FirstName
    [Arguments]    ${firstName}
    Input Text    ${txt_firstName}    ${firstName}

Enter LastName
    [Arguments]    ${lastName}
    Input Text    ${txt_lastName}    ${lastName}

Enter PhoneNumber
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}

Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}

Enter Address
    [Arguments]    ${add}
    Input Text    ${txt_add1}    ${add}

Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}

Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}

Enter PostalCode
    [Arguments]    ${postalcode}
    Input Text    ${txt_postCode}    ${postalcode}

Enter Country
    [Arguments]    ${country}
    Select From List By Label    ${drp_country}    ${country}

Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_userName}   ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_Password}    ${password}

Enter Confirmed Password
    [Arguments]    ${confPswd}
    Input Text    ${txt_conformedPassword}    ${confPswd}

Click Submit
    Click Button    ${btn_submit}

Verify Sucessful Registration
    Page Should Contain    Thank you for registering.

Close my Browsers
    Close All Browsers


