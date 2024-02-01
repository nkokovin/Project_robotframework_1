# Comment
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.saucedemo.com/
#${URL2}    https://travel.yandex.ru/avia/
${Browser}    Chrome
${Login}    standard_user
${Password}    secret_sauce

*** Keywords ***
open browser and maximize
        open browser    ${URL}    ${Browser}
        maximize browser window

*** Test Cases ***
My First Test Case
    open browser and maximize
    input text    id:user-name    ${Login}
    input text    xpath:/html/body/div/div/div[2]/div[1]/div/div/form/div[2]/input    ${Password}
    click button    name:login-button
    sleep    10
    close browser


