*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Variables ***
${base_url}         https://reqres.in/api/users
${page_id}          ?page=2

*** Test Cases ***

Quick Get Request Test
    create session    mysession   ${base_url}
    ${response}=  GET On Session    mysession       ${page_id}
    log    ${response.json()}

    #Validation
    ${status_code}    convert to string    ${response.status_code}
    should be equal    ${status_code}    200
    ${body}    convert to string    ${response.content}
    should contain    ${body}     Michael
    ${headers_content_type}    get from dictionary    ${response.headers}    Content-Type
    should be equal    ${headers_content_type}    application/json; charset=utf-8