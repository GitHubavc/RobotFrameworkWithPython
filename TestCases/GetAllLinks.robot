*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    Open Browser    https://demo.guru99.com/test/newtours/    chrome
    Maximize Browser Window

    ${AllLinksCount}=    Get Element Count    xpath=//a
    Log To Console    Total number of links: ${AllLinksCount}

    FOR    ${i}    IN RANGE    1    ${AllLinksCount + 1}
        ${LinkText}=    Get Text    xpath=(//a)[${i}]
        Log To Console    Link ${i}: ${LinkText}
    END

    Close Browser






