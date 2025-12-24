*** Test Cases ***
Forloop1
    FOR    ${i}    IN RANGE    0    11
        Log To Console    ${i}
    END

Forloop2
    FOR    ${i}    IN    1    2    3    4    5    6
        Log To Console    ${i}
    END

Forloop3withList
    ${items}    Create List    1    2    3    4    5
    FOR    ${i}    IN    ${items}
        Log To Console    ${i}
    END


Forloop4
    FOR    ${i}    IN    john    david    smith    scott    amit
        Log To Console    ${i}
    END
    
Forloop5
    ${namesList}    Create List    john    anu    smith    scott    amit
    FOR    ${i}    IN    ${namesList}
        Log To Console    ${i}
    END

Forloop6WithExit
    @{items}    Create List    1    2    3    4    5    6
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}
        Exit For Loop If    ${i}==3
    END

    





