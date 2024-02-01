*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser and Maximize
    [Arguments]   ${UserURL}    ${BrowserName}
        open browser    ${UserURL}    ${BrowserName}
        maximize browser window
Login To Website
    [Arguments]   ${UserName}    ${Password}
    input text    id:user-name    ${UserName}
    input text    xpath:/html/body/div/div/div[2]/div[1]/div/div/form/div[2]/input    ${Password}
    click button    name:login-button
    page should not contain element     class:error-message-container