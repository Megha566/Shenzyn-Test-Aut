*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    open browser    about:blank    ff

End Web Test
    close browser