*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Validate & Test
    SeleniumLibrary.Open Browser    http://qa-interview.srcli.xyz    chrome
    SeleniumLibrary.Wait Until Page Contains    Welcome
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Go To    http://qa-interview.srcli.xyz/login
    SeleniumLibrary.Wait Until Page Contains    Username
    SeleniumLibrary.Input Text    //input[contains(@name, 'username')]    root
    SeleniumLibrary.Input Password    //input[contains(@name, 'password')]    root123
    SeleniumLibrary.Click Element    //input[contains(@value, 'Login')]
    SeleniumLibrary.Wait Until Page Contains    Welcome
    SeleniumLibrary.Go To    http://qa-interview.srcli.xyz/data
    SeleniumLibrary.Input Text    //input[contains(@name, 'start')]    2018-07-06
    SeleniumLibrary.Input Text    //input[contains(@name, 'end')]    2018-07-02
    SeleniumLibrary.Click Element    //input[contains(@type, 'submit')]
    SeleniumLibrary.Wait Until Page Contains    wrong
    SeleniumLibrary.Go Back
    SeleniumLibrary.Input Text    //input[contains(@name, 'start')]    2018-07-01
    SeleniumLibrary.Input Text    //input[contains(@name, 'end')]    2018-07-05
    SeleniumLibrary.Click Element    //input[contains(@type, 'submit')]
    SeleniumLibrary.Wait Until Page Contains    pengeluaran5
    SeleniumLibrary.Get Session Id
    SeleniumLibrary.Delete Cookie    username
    SeleniumLibrary.Go To    http://qa-interview.srcli.xyz/logout
    SeleniumLibrary.Set Selenium Speed    2 seconds
    SeleniumLibrary.Go To    http://qa-interview.srcli.xyz/login
    SeleniumLibrary.Close Browser

Wrong Login
    SeleniumLibrary.Open Browser    http://qa-interview.srcli.xyz    chrome
    SeleniumLibrary.Wait Until Page Contains    Welcome
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Go To    http://qa-interview.srcli.xyz/login
    SeleniumLibrary.Wait Until Page Contains    Username
    SeleniumLibrary.Input Text    //input[contains(@name, 'username')]    rooting
    SeleniumLibrary.Input Password    //input[contains(@name, 'password')]    root123
    SeleniumLibrary.Click Element    //input[contains(@value, 'Login')]
    SeleniumLibrary.Wait Until Page Contains    wrong
    SeleniumLibrary.Set Selenium Speed    2 seconds
    SeleniumLibrary.Close Browser

Block to Data
    SeleniumLibrary.Open Browser    http://qa-interview.srcli.xyz    chrome
    SeleniumLibrary.Wait Until Page Contains    Welcome
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Go To    http://qa-interview.srcli.xyz/data
    SeleniumLibrary.Set Selenium Speed    5 seconds
    SeleniumLibrary.Wait Until Page Contains    Username
    SeleniumLibrary.Close Browser
