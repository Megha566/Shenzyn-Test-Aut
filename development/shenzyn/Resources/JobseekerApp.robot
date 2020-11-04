*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login to jobseeker portal
    go to     http://js.stage.shenzyn.com/
    #wait for react
    MAXIMIZE BROWSER WINDOW
    wait until page contains    Wear your superwoman cape and fly high
    input text    xpath=//input[@id='emailId']  saravjeet.singh@hotmail.com
    input text    xpath=//input[@id='password']  s33rat@123
    click element    //span[contains(text(),'Remember me')]
    click button    //button[@class='ant-btn btn-cta btn-block ant-btn-primary']

Update Profile
    wait until page contains element    //span[contains(text(),'Recommended Jobs')]
    click element    //div[@class='ant-menu-submenu-title']//span//span[@class='nav-text'][contains(text(),'Profile')]
    wait until page contains    Update Profile
    click element    //li//li[1]//a[1]

Update Personal Details
    wait until page contains    Personal Details
# Pending implementation
#   1. Image and resume upload
    #click element    //span[1]/div[1]/span[1]/img[1]
    #choose file    //span[1]/div[1]/span[1]/img[1]    C:\Users\Inderjeet\Desktop\Saravjeet\Shenzyn\static\download.jpg

#   2. Video JD upload
#   3. DOB update
#   4. Current Location

#Contact Number
    sleep   3s
    page should contain element    //label[contains(text(),'Contact Number')]
    clear element text    css=#contactNo
    input text    css=#contactNo  9975568427
#Current location

#Linkedin URL
    clear element text    xpath=//input[@id='linkedin']
    input text    xpath=//input[@id='linkedin']  Robot Automation
#Git URL
    clear element text    xpath=//input[@id='github']
    input text    xpath=//input[@id='github']  Testing GIT
    click element    xpath=//div[@class='steps-action']//button[@class='ant-btn ant-btn-primary']
Update Educational Details
    wait until page contains    Highest Qualification
    click element    xpath=//div[@id='highestQualification-0']/div[1]
    sleep    2s
    click element    xpath=//li[contains(text(),'Intermediate')]
    clear element text    xpath=//input[contains(@class,'ant-input ant-select-search__field')]
    input text    xpath=//input[contains(@class,'ant-input ant-select-search__field')]  Computer Science
    clear element text    xpath=//input[@id='institute-0']
    input text    xpath=//input[@id='institute-0']  SSCET
    click element    xpath=//div[@id='educationType-0']//div[contains(@class,'ant-select-selection__rendered')]
    sleep    2s
    #click element    xpath=//a[contains(@class,'ant-calendar-today-btn')]
    click button    xpath=//div[3]/button[2]
    sleep    5s

Update Employment Details
    wait until page contains element    //label[@for='isFresher']
    clear element text    //textarea[@id='employmentDescription-0']
    input text    //textarea[@id='employmentDescription-0']     Robot Framework Testing
    click button    //div[@class='steps-action']/button[2]

Update Project Details
    wait until page contains    Certification Name
    clear element text    //input[@id='certificationName-0']
    input text    //input[@id='certificationName-0']    Microsoft Azure Data Engineer
    clear element text    //input[@id='certificationBody-0']
    input text    //input[@id='certificationBody-0']    Microsoft

    #Check if +Add More button is working
    click button    //div[2]/div[1]/div[1]/div[1]/span[1]/button[1]
    sleep    2s
    click button    //div[2]/div[1]/div[1]/div[1]/span[1]/button[1]
    #Project
    clear element text    //input[@id='projectTitle-0']
    input text    //input[@id='projectTitle-0']     Automating Jobseeker Portal

    #clear element text    //div[@class='ant-select-selection__rendered']
    #input text    //div[@class='ant-select-selection__rendered']    Python, Java, Robot Framework
    clear element text    //textarea[@id='projectDescription-0']
    input text    //textarea[@id='projectDescription-0']    Selenium Testing

    click button    //div[@class='steps-action']/button[2]


