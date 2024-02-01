# Comment
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL1}    https://www.saucedemo.com/
${URL2}    https://travel.yandex.ru/avia/
${Browser}    Chrome
${Login}    standard_user
${Password}    secret_sauce

*** Test Cases ***
My First Test Case
    open browser  ${URL1}    ${Browser}
    Maximize Browser Window
    input text    id:user-name    ${Login}
    input text    xpath:/html/body/div/div/div[2]/div[1]/div/div/form/div[2]/input    ${Password}
    click button    name:login-button
    sleep    10
    close browser


