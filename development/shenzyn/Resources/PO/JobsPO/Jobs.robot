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

Apply Saved Job
    builtin.sleep    5s
    click element    //*[@id="app-sidenav"]/div/div/ul/li[4]/div/span/span
    builtin.sleep    2s
    click element    //div[1]/ul[1]/li[4]/ul[1]/li[1]/a[1]
    builtin.sleep    5s
    click element    //h4[contains(text(),'Sales PM')]
    builtin.sleep    5s
    click element    (//button[@class='ant-btn ant-btn-default'])[1]

Apply Recommended Job
    builtin.sleep    5s
    click element    //*[@id="app-sidenav"]/div/div/ul/li[4]/div/span/span
    builtin.sleep    2s
    click element    //div[1]/div[1]/ul[1]/li[4]/ul[1]/li[3]/a[1]
    builtin.sleep    2s
    click element    //h4[contains(text(),'Software Engineer')]
    builtin.sleep    2s
    click element    //div[2]/div[2]/button[1]

Apply Events
    builtin.sleep    5s
    click element    //div[1]/div[1]/ul[1]/li[5]/a[1]
    builtin.sleep    2s
    click element    //div[3]/div[1]/li[1]/ul[1]/li[1]/a[1]
    builtin.sleep    2s
    click element    (//button[@class='ant-btn ant-btn-default'])[1]

Select Mentor
    builtin.sleep    5s
    click element    //span[contains(text(),'Mentors')]
    builtin.sleep    2s
    click element    //div[1]/ul[1]/li[7]/ul[1]/li[1]/a[1]
    builtin.sleep    5s
    click element    (//button[@type='button']/span[contains(text(),'Request')])[1]
    builtin.sleep    1s
    click element    //div[2]/div[1]/span[1]/div[1]/div[1]/div[1]
    builtin.sleep    1s
    click element    //li[@role='option']
    builtin.sleep    1s
    click element    //button[@type='submit']