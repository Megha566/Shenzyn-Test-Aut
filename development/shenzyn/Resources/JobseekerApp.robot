*** Settings ***
Library    SeleniumLibrary    timeout=60s
Library    DateTime
Resource    ../Resources/PO/MainPagePO/LandingPage.robot
Resource    ../Resources/PO/MainPagePO/LoginDetails.robot
Resource    ../Resources/PO/MainPagePO/JobseekerPortalObjects.robot
Resource    ../Resources/PO/UpdateProfilePO/PersonalDetails.robot
Resource    ../Resources/PO/UpdateProfilePO/EducationalDetails.robot
Resource    ../Resources/PO/UpdateProfilePO/ProjectDetails.robot
Resource    ../Resources/PO/UpdateProfilePO/EmploymentDetails.robot
Resource    ../Resources/PO/UpdateProfilePO/UpdateSkills.robot
Resource    ../Resources/PO/UpdateProfilePO/UpdatePreferences.robot
Resource    ../Resources/PO/SavedProfilePO/SavedProfile.robot
Resource    ../Resources/PO/JobsPO/Jobs.robot

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
    BuiltIn.sleep    5s
    click element    //li//li[1]//a[1]

Update Personal Details
    PersonalDetails.Validate PageObjects
    PersonalDetails.Image Upload
    PersonalDetails.Resume Upload
    PersonalDetails.Video JD Upload
    PersonalDetails.Contact Number
    PersonalDetails.DOB Update
    PersonalDetails.Current Location
    PersonalDetails.Nationality
    PersonalDetails.Linkedin URL
    PersonalDetails.GIT URL
    PersonalDetails.NextPage

Update Educational Details
    EducationalDetails.Validate PageObjects
#    EducationalDetails.Highest Qualification
#    EducationalDetails.Degree
    EducationalDetails.Specialization
    EducationalDetails.Institute
#    EducationalDetails.Education Type
#    EducationalDetails.Passing Year and Month
    EducationalDetails.NextPage

Update Employment Details
    EmploymentDetails.Validate Fresher PageObjects
    EmploymentDetails.Fresher
    click element    (//button)[2]
    click element    (//button)[1]
    wait until page contains element    //input[@id='currentCtc-0']
    clear element text    //input[@id='currentCtc-0']
    input text    //input[@id='currentCtc-0']    10
    builtin.sleep    1s

    click element    (//input[@placeholder='Select date'])[1]
    builtin.sleep    1s
    repeat keyword    10 times    Previous Month Employment
    builtin.sleep    1s
    click element    //div[contains(text(),'20')]

    clear element text    //textarea[@id='employmentDescription-0']
    input text    //textarea[@id='employmentDescription-0']    Testing
    click element    (//span[@class='ant-checkbox'])[2]
    builtin.sleep    1s
    input text    (//input[@role='spinbutton'])[2]      60
    EmploymentDetails.NextPage

Previous Month Employment
    click element    //a[@class='ant-calendar-prev-year-btn']

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

Saved Profile
    SavedProfile.Navigate to Saved Profile
    SavedProfile.Validate PageObjects
    SavedProfile.Validate Personal Details
    SavedProfile.Validate Educational Details
    SavedProfile.Validate Employment Details
    SavedProfile.Validate Project Details
    SavedProfile.Validate Skill Details
#    SavedProfile.Validate Preferences

#The below section is used for job search and application testing
Navigate to JobMenu
    Jobs.Navigate to JobSearchMenu

SerachBy Skills
    Jobs.Search By Skill

Apply Saved Job
    Jobs.Apply Saved Job

Apply Recommended Job
    Jobs.Apply Recommended Job

Mentor
    Jobs.Select Mentor



