*** Settings ***



*** Test Cases ***

TC1 User Registration Test
    [Tags]    regression
    Log To Console    This is user reg test
    Log To Console    user registration test is over

TC2 Login Test
    [Tags]    sanity
    Log To Console    This is user login test
    Log To Console    user login test is over

TC3 Change User Settings
    [Tags]    regression
    Log To Console    This is user settings test
    Log To Console    user setting test is over

TC4 Logout Test
    [Tags]    sanity
    Log To Console    This is user Logout test
    Log To Console    user Logout test is over