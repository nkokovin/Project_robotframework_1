*** Settings ***
Library     RequestsLibrary
Library    JSONLibrary
Library     Collections
*** Variables ***
${url}  http://users.bugred.ru/tasks/rest/doregister     #https://reqres.in
${endpoint}  /tasks/rest/doregister     #/api/users
*** Test Cases ***
Quick Post Request Test
    create session    session1   ${url}
    #${endpoint}    set variable    /api/users
    ${body}=    create dictionary    email=Nick8@mail.ru  name=Nick8  password=Nick8  #name=Nick1    job=QAEng
    ${headers}=     create dictionary    Content-Type=application/json
    ${response}=  POST On Session    session1    ${endpoint}    data=${body}    headers=${headers}
    log to console    ${response.status_code}
    log to console    ${response.content}
    #Validation
    ${status_code}    convert to string    ${response.status_code}
    should be equal    ${status_code}    200
    ${res_body}    convert to string    ${response.content}
    #should contain    ${res_body}   Nick5
