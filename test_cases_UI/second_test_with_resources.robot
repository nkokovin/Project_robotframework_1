# Comment
*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${URL}    https://www.saucedemo.com/
#${URL2}    https://travel.yandex.ru/avia/
${Browser}    Chrome
${Login}    standard_use
${Password}    secret_sauce

*** Test Cases ***
My First Test Case
    [Setup]    Open Browser and Maximize    ${URL}    ${Browser}
    Login To Website    ${Login}    ${Password}
    sleep    10
    [Teardown]     close browser



