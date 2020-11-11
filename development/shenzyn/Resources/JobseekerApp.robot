*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/LoginDetails.robot
Resource    ../Resources/PO/JobseekerPortalObjects.robot
Resource    ../Resources/PO/PersonalDetails.robot
Resource    ../Resources/PO/EducationalDetails.robot
Resource    ../Resources/PO/ProjectDetails.robot
Resource    ../Resources/PO/EmploymentDetails.robot
Resource    ../Resources/PO/UpdateSkills.robot
Resource    ../Resources/PO/UpdatePreferences.robot

*** Keywords ***
Verify Landing Page
    LandingPage.Load
    LandingPage.Verify Page Loaded
    LandingPage.Validate the PageObjects

Login to jobseeker portal
    LandingPage.Load
    LandingPage.Verify Page Loaded
    #LandingPage.Validate the PageObjects
    LoginDetails.LoginID
    LoginDetails.LoginPassword
    click element    //span[contains(text(),'Remember me')]
    click button    //button[@class='ant-btn btn-cta btn-block ant-btn-primary']

Validate JSPageObjects
   JobseekerPortalObjects.Verify JSPage Loaded
   JobseekerPortalObjects.Validate the JSPageObjects

Update Profile
    builtin.sleep    5s
    wait until page contains element    //span[contains(text(),'Recommended Jobs')]
    click element    //div[@class='ant-menu-submenu-title']//span//span[@class='nav-text'][contains(text(),'Profile')]
    wait until page contains    Update Profile
    BuiltIn.sleep    2s
    click element    //li//li[1]//a[1]

Update Personal Details
    PersonalDetails.Validate PageObjects
    PersonalDetails.Image Upload
    PersonalDetails.Resume Upload
    PersonalDetails.Video JD Upload
    PersonalDetails.DOB Update
    PersonalDetails.Current Location
    PersonalDetails.Nationality
    PersonalDetails.Contact Number
    PersonalDetails.Linkedin URL
    PersonalDetails.GIT URL
    PersonalDetails.NextPage

Update Educational Details
    EducationalDetails.Validate PageObjects
    EducationalDetails.Highest Qualification
    EducationalDetails.Degree
    EducationalDetails.Specialization
    EducationalDetails.Institute
    EducationalDetails.Education Type
    EducationalDetails.Passing Year and Month
    EducationalDetails.NextPage

Update Employment Details
    EmploymentDetails.Validate Fresher PageObjects
    EmploymentDetails.Fresher
    EmploymentDetails.NextPage

Update Project Details
    ProjectDetails.Validate PageObjects
    ProjectDetails.Certification Details
    ProjectDetails.Project Details
    ProjectDetails.Patent Details
    ProjectDetails.Publication Details
    ProjectDetails.NextPage

Update Skills
    UpdateSkills.Validate PageObjects
    UpdateSkills.Skills
    UpdateSkills.Languages
    UpdateSkills.Bio
    UpdateSkills.NextPage

Update Preferences
    UpdatePreferences.Validate PageObjects
    UpdatePreferences.Company Size
    UpdatePreferences.Desired CTC
    UpdatePreferences.Preffered Benefits
    UpdatePreferences.NextPage


