*** Settings ***
Library    SeleniumLibrary
Library    pyautogui
Library    ImageHorizonLibrary

*** Variables ***

*** Keywords ***
Validate PageObjects
    Wait until page contains    Personal Details
    builtin.sleep    5s
    element text should be    //div[contains(text(),'Personal Details')]    Personal Details
    element text should be    //span[contains(text(),'Profile Picture')]    Profile Picture
#    element text should be    //span[contains(text(),'Upload Resume')]    Upload Resume
    element text should be    //label[contains(text(),'Video JD')]    Video JD
    element text should be    //label[contains(text(),'DOB')]    DOB
    element text should be    //label[contains(text(),'Contact Number')]    Contact Number
    element text should be    //label[contains(text(),'Current Location')]    Current Location
    element text should be    //label[contains(text(),'Nationality')]    Nationality
    element text should be    //label[contains(text(),'Linkedin Profile Url')]    Linkedin Profile Url
    element text should be    //label[contains(text(),'Github Profile Url')]    Github Profile Url
    element text should be    //span[contains(text(),'Validate')]      Validate
    element text should be    //p[contains(text(),'Drag or Click to Upload')]    Drag or Click to Upload
    page should contain element    //div[@class='steps-action']/button
    page should contain element    //section[1]/article[1]/div[3]/button[1]

Image Upload
    Wait until page contains element    //div[1]/div[2]/div[1]/span[1]/span[1]/div[1]/span[1]    timeout=60s    error=Element not Loaded
    click element    //div[1]/div[2]/div[1]/span[1]/span[1]/div[1]/span[1]
    pyautogui.typewrite    ${IMAGE_FILE_PATH}
    BuiltIn.sleep    2s
    ImageHorizonLibrary.Press Combination   Key.enter
#    seleniumlibrary.wait until element is visible    //span[contains(text(),'Uploaded successfully.Pass, Female Age Above 18..')]
#    BuiltIn.sleep    5s

Resume Upload
    WAIT UNTIL PAGE CONTAINS ELEMENT    //p[contains(text(),'Drag or Click to Upload')]    timeout=60s    error=Element not loaded successfully
    click element    //p[contains(text(),'Drag or Click to Upload')]
    pyautogui.typewrite    ${RESUME}
    BuiltIn.sleep    2s
    ImageHorizonLibrary.Press Combination   Key.enter
    wait until element is enabled    //span[contains(text(),'saravjeet.doc')]
    wait until element is visible    //span[contains(text(),'saravjeet.doc')]

Video JD Upload
    WAIT UNTIL PAGE CONTAINS ELEMENT    //div[2]/div[1]/div[1]/span[1]/span[1]/div[1]/span[1]/button[1]
    click element    //div[2]/div[1]/div[1]/span[1]/span[1]/div[1]/span[1]/button[1]
    builtin.sleep    1s
    pyautogui.typewrite    ${VIDEO_JD}
    builtin.sleep    2s
    ImageHorizonLibrary.Press Combination   Key.enter
    wait until element is enabled    //span[contains(text(),'big_buck_bunny_720p_1mb.mp4')]
    wait until element is visible    //span[contains(text(),'big_buck_bunny_720p_1mb.mp4')]

DOB Update
    builtin.sleep    3s
    click element    //div/input[@class='ant-calendar-picker-input ant-input']
    builtin.sleep    1s
    repeat keyword    15 times    Previous Month
    click element    //div[contains(text(),'17')]

Previous Month
    click element    //a[@class='ant-calendar-prev-year-btn']

Diversity Inclusion Category
    click element    (//input[@class='ant-input ant-select-search__field'])[1]
    builtin.sleep    1s
    click element    //li[contains(text(),'LGBTQ')]

Current Location
    clear element text    (//input[@class='ant-input ant-select-search__field'])[2]
    input text    (//input[@class='ant-input ant-select-search__field'])[2]    ${CURRENT_LOCATION}

Nationality
    clear element text    (//input[@class='ant-input ant-select-search__field'])[3]
    input text    (//input[@class='ant-input ant-select-search__field'])[3]    ${NATIONALITY}

Contact Number
    BuiltIn.sleep   3s
    page should contain element    //label[contains(text(),'Contact Number')]
    clear element text    css=#contactNo
    input text    css=#contactNo  ${CONTACT_NO}

Linkedin URL
    clear element text    xpath=//input[@id='linkedin']
    input text    xpath=//input[@id='linkedin']  ${LINKEDIN}

GIT URL
    clear element text    xpath=//input[@id='github']
    input text    xpath=//input[@id='github']  ${GIT}
#    wait until element is not visible    //span[contains(text(),'saravjeet.doc')]
    wait until page contains element    //span[contains(text(),'saravjeet.doc')]
    wait until page contains element    //span[contains(text(),'big_buck_bunny_720p_1mb.mp4')]

NextPage
    click element    xpath=//div[@class='steps-action']//button[@class='ant-btn ant-btn-primary']
