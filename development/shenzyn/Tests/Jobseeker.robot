*** Settings ***
Documentation    This is some basic information about the suite
Resource    ../Resources/JobseekerApp.robot
Resource    ../Resources/CommonApp.robot

*** Variables ***

*** Test Cases ***
User should be able to login and navigate and update details under jobseeker portal
    [Documentation]    Testing Jobseeker portal
    [Tags]    Smoke
    CommonApp.Begin Web Test
    JobseekerApp.Login to jobseeker portal
    JobseekerApp.Update Profile
    JobseekerApp.Update Personal Details
    JobseekerApp.Update Educational Details
    JobseekerApp.Update Employment Details
    JobseekerApp.Update Project Details
    CommonApp.End Web Test













