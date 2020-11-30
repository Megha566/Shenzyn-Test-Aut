*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Validate PageObjects
    BuiltIn.sleep    2s
    element text should be    //div[contains(text(),'Education Details')]    Education Details
    element text should be    //label[contains(text(),'Highest Qualification')]    Highest Qualification
    element text should be    //label[contains(text(),'Degree')]    Degree
    element text should be    //label[contains(text(),'Specialization')]    Specialization
    element text should be    //label[contains(text(),'Institute')]    Institute
    element text should be    //label[contains(text(),'Education Type')]    Education Type
    element text should be    //label[contains(text(),'Passing Year and Month')]    Passing Year and Month
    click element    //div[2]/div[1]/div[1]/span[1]/button[1]
    builtin.sleep    2s
    click element    //div[2]/div[7]/div[1]/div[1]/span[1]/button[1]
    page should contain element    //button[@class='ant-btn']
    page should contain element    //button[@class='ant-btn ant-btn-primary']/span[contains(text(),'Next')]

Highest Qualification
    wait until page contains    Highest Qualification
    click element    xpath=//div[@id='highestQualification-0']/div[1]
    BuiltIn.sleep    2s
    click element    xpath=//li[contains(text(),'Intermediate')]

Degree
    clear element text    //div[1]/ul[1]/li[1]/div[1]/input[1]
    input text    //div[1]/ul[1]/li[1]/div[1]/input[1]    ${DEGREE}

Specialization
    clear element text    xpath=//input[contains(@class,'ant-input ant-select-search__field')]
    input text    xpath=//input[contains(@class,'ant-input ant-select-search__field')]  ${SPECIALIZATION}
Institute
    clear element text    xpath=//input[@id='institute-0']
    input text    xpath=//input[@id='institute-0']  ${INSTITUTE}
Education Type
    click element    xpath=//div[@id='educationType-0']//div[contains(@class,'ant-select-selection__rendered')]
    BuiltIn.sleep    2s
    click element    //li[contains(text(),'Full Time')]

Passing Year and Month
    click element    //div[6]/div[2]/div[1]/span[1]/div[1]/span[1]/div[1]/input[1]
    builtin.sleep    2s
    click element    //div[contains(text(),'26')]

NextPage
    click button    xpath=//div[3]/button[2]
    BuiltIn.sleep    5s
