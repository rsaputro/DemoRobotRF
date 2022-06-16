*** Settings ***
Library                         SeleniumLibrary
Test Setup                      Open Browser                ${base_url}         ${browser_type}
Test Teardown                   Close Browser

*** Variables ***
${base_url}                     https://demoqa.com/radio-button
${browser_type}                 Chrome

*** Test Cases ***
I click radio button in impressive data
    Maximize Browser Window
    Click Element               //label[@for="impressiveRadio"]
    Sleep                       2s
    Element Should Be Visible   //p[@class="mt-3"]
    Sleep                       2s
    Element Should Contain      //span[@class="text-success"]           Impressive
    Sleep                       2s

I click radio button in Yes data
    Maximize Browser Window
    Click Element               //label[@for="yesRadio"]
    Sleep                       2s
    Element Should Be Visible   //p[@class="mt-3"]
    Sleep                       2s
    Element Should Contain      //span[@class="text-success"]           Yes
    Sleep                       2s