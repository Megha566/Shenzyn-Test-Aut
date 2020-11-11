*** Settings ***
Documentation    Jobseeker Automation Test suite
Library    SeleniumLibrary
Library    ImapLibrary

*** Variables ***

*** Test Cases ***
Email Verification
    Open Mailbox    host=outlook.office365.com    user=seerat.chaggar@hotmail.com    password=s33rat@123
    ${LATEST} =    Wait For Email    sender=noreply@shenzyn.com    timeout=300
    ${HTML} =    Open Link From Email    ${LATEST}
    Should Contain    ${HTML}    Hello, Please verify your account by clicking the link here.
    sleep   10s
    Close Mailbox
*** Keywords ***


