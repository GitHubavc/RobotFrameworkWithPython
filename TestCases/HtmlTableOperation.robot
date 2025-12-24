*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Table Validations
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    no of rows: ${rows}
    Log To Console    no of columns: ${columns}
    ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[2]/td[2]
    Log To Console    ${data}
#    Verify second column name is Author
    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author
#    Verify fourth row name has
    Table Row Should Contain    xpath://table[@name='BookTable']    4    Learn JS
#    Verify cell contains the value
    Table Cell Should Contain    xpath://table[@name='BookTable']    5    2    Mukesh
 #    Verify header contains
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName
    Close Browser







