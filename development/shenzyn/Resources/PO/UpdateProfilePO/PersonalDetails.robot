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
    page should contain element    //div[5]/div[2]/div[1]/span[1]/div[1]/button[@class='ant-btn ant-btn-primary']
    page should contain element    //section[1]/article[1]/div[3]/button[1]

Image Upload
    BuiltIn.sleep    2s
    click element    //div[1]/div[2]/div[1]/span[1]/span[1]/div[1]/span[1]
    BuiltIn.sleep    3s
    pyautogui.typewrite    ${IMAGE_FILE_PATH}
    BuiltIn.sleep    3s
    ImageHorizonLibrary.Press Combination   Key.enter
#    seleniumlibrary.wait until element is visible    //span[contains(text(),'Uploaded successfully.Pass, Female Age Above 18..')]
#    BuiltIn.sleep    5s

Resume Upload
    click element    //div[1]/div[2]/div[1]/span[1]/span[1]/div[1]/span[1]
    BuiltIn.sleep    2s
    pyautogui.typewrite    ${RESUME}
    BuiltIn.sleep    3s
    ImageHorizonLibrary.Press Combination   Key.enter
    BuiltIn.sleep    5s
Video JD Upload
    click element    //div[2]/div[1]/div[1]/span[1]/span[1]/div[1]/span[1]/button[1]
    BuiltIn.sleep    2s
    pyautogui.typewrite    ${VIDEO_JD}
    BuiltIn.sleep    2s
    ImageHorizonLibrary.press combination    key.enter
#    wait for condition
    BuiltIn.sleep    10s
DOB Update
    builtin.sleep    3s
    click element    //div/input[@class='ant-calendar-picker-input ant-input']
    click element    //div[contains(text(),'17')]

Current Location
#The below Locator needs to be optimized, will do it later
    clear element text    //div[6]/div[2]/div[1]/span[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/div[1]/input[1]
    input text    //div[6]/div[2]/div[1]/span[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/div[1]/input[1]    ${CURRENT_LOCATION}

Nationality
    clear element text    //div[7]/div[2]/div[1]/span[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/div[1]/input[1]
    input text    //div[7]/div[2]/div[1]/span[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/div[1]/input[1]    ${NATIONALITY}

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

NextPage
    click element    xpath=//div[@class='steps-action']//button[@class='ant-btn ant-btn-primary']
