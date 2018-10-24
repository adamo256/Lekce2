*** Settings ***
Test Setup    Log    Setup
Test Teardown    Log    Teardown
Library    Dialogs 
*** Variables ***
${Name} =    Adam
${err1} =    Name is not equal
*** Test Cases ***
First Test
    Insert Name
Second Test
    Insert Names2   
       
 *** Keywords ***
Insert Name  
    ${Captcha} =  Get Value From User   Enter Name
    Run Keyword If    "${Captcha}"=="${Name}"    Log    Result: ${Captcha} is equal    ELSE    Fail    Log    Result: ${err1}
Insert Names2    
    ${Captcha2} =  Get Value From User   Enter Name 2
    ${Captcha3} =  Get Value From User   Enter Name 3
    Run Keyword If    "${Captcha2}"=="${Captcha3}"    Log    Result: ${Captcha2} is equal ${Captcha3}   ELSE    Fail    Log    Result: ${err1} ${Captcha2} and ${Captcha3}

    