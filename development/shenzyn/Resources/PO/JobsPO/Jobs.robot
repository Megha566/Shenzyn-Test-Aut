*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Navigate to JobSearchMenu
    builtin.sleep    5s
    click element    //div[@class='ant-menu-submenu-title']//span//span[@class='nav-text'][contains(text(),'Jobs')]
    builtin.sleep    2s
    click element    //ul[1]/li[4]/ul[1]/li[2]/a[1]
    builtin.sleep    5s

Search By Skill
    clear element text    //input[@id='search job']
    input text    //input[@id='search job']    testing
    builtin.sleep    2s
    click element    //button[contains(text(),'Search')]
    builtin.sleep    5s
    click element    //h4[contains(text(),'PythonAI')]
    builtin.sleep    2s
    click element    //div[2]/button[2]
    builtin.sleep    2s
#    page should contain element    //span[contains(text(),'Job Saved SuccessFully !')]
