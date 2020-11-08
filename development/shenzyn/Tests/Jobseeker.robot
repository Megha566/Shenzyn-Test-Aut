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

*** Test Cases ***
#Validate landing page
#    [Documentation]    This test will verify if the objects or links present and working on the jobseeker landing page
#    [Tags]    Landing Page
#    JobseekerApp.Verify Landing Page
#
##User should be able to login and navigate and update details under jobseeker portal
#Validate Login Functionality
#    [Documentation]    This test will verify if the user is able to login to the Jobseeker portal
#    [Tags]    Login Functionality
#    JobseekerApp.Login to jobseeker portal

Validate updates on Profile
    [Documentation]    This test will verify if the user is able to login and update the details on the jobseeker portal
    [Tags]    Update Jobseeker Profile
    JobseekerApp.Login to jobseeker portal
    JobseekerApp.Update Profile
    JobseekerApp.Update Personal Details
    JobseekerApp.Update Educational Details
    JobseekerApp.Update Employment Details
    JobseekerApp.Update Project Details
    JobseekerApp.Update Skills
    JobseekerApp.Update Preferences
















