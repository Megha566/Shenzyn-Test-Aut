*** Settings ***
Documentation    This is some basic information about the suite
Resource    ../Resources/JobseekerApp.robot
Resource    ../Resources/CommonApp.robot
Test Setup    CommonApp.Begin Web Test
Test Teardown    CommonApp.End Web Test

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    http://js.stage.shenzyn.com/
${LOGIN_ID} =    saravjeet.singh@hotmail.com
${LOGIN_PASSWORD} =    s33rat@123
${USER_NAME} =    Saravjeet Chaggar
${IMAGE_FILE_PATH} =    C:\\Users\\Inderjeet\\Desktop\\Saravjeet\\Shenzyn\\static\\download.jpg
${RESUME} =    C:\\Users\\Inderjeet\\Desktop\\Saravjeet\\Shenzyn\\static\\saravjeet.doc
${VIDEO_JD} =    C:\\Users\\Inderjeet\\Desktop\\Saravjeet\\Shenzyn\\static\\sample-mpg-file.mpg

*** Test Cases ***
Validate landing page
    [Documentation]    This test will verify if the objects or links present and working on the jobseeker landing page
    [Tags]    Test Case 1: Validate JS Landing Page
    JobseekerApp.Verify Landing Page

#User should be able to login and navigate and update details under jobseeker portal
Validate Login Functionality
    [Documentation]    This test will verify if the user is able to login to the Jobseeker portal
    [Tags]    Test Case 2: Validate JS Login Funcationality
    JobseekerApp.Login to jobseeker portal

Validate JobSeekerPage
    [Documentation]    This test will verify if all the objects are present on the jobseeker portal
    [Tags]    Test Case 3: Validate JS Page Objects
    JobseekerApp.Login to jobseeker portal
    JobseekerApp.Validate JSPageObjects

Validate updates on Profile
    [Documentation]    This test will verify if the user is able to login and update the details on the jobseeker portal
    [Tags]    Test Case 4: Validate Profile Update Funcationality
    JobseekerApp.Login to jobseeker portal
    JobseekerApp.Update Profile
    JobseekerApp.Update Personal Details
    JobseekerApp.Update Educational Details
    JobseekerApp.Update Employment Details
    JobseekerApp.Update Project Details
    JobseekerApp.Update Skills
    JobseekerApp.Update Preferences
















