*** Settings ***
Library     RequestsLibrary
Library    JSONLibrary
Library     Collections
*** Variables ***
${url}     https://reqres.in
*** Test Cases ***
Quick Post Request Test
    create session    session1   ${url}    disable_warnings=1
    ${endpoint}    set variable    /api/users
    ${body}=    create dictionary     name=Nick1    job=QAEng
    ${headers}=     create dictionary    Content-Type=application/json
    ${response}=  POST On Session    session1    ${endpoint}    data=${body}    headers=${headers}
    log to console    ${response.status_code}
    log to console    ${response.content}
    #Validation
    ${status_code}    convert to string    ${response.status_code}
    should be equal    ${status_code}    201
    ${res_body}    convert to string    ${response.content}
    should contain    ${res_body}     name=Nick1
