*** Settings ***

Suite Setup    Log To Console    Opening Browser
Suite Teardown    Log To Console    Closing Browser

Test Setup    Log To Console        Login To App
Test Teardown    Log To Console        Logout from Application

*** Test Cases ***
TC1 Prepaid Recharge
    Log To Console    This is prepaid recharge testcase
TC2 Postpaid Recharge
    Log To Console    This is postpaid recharge testcase
TC3 Search
    Log To Console    This is postpaid recharge testcase
TC4 Advanced Search
    Log To Console    This is advanced search testcase