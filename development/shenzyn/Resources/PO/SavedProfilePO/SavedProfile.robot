*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Navigate to Saved Profile
    builtin.sleep    3s
    click element    //div[@class='ant-menu-submenu-title']//span//span[@class='nav-text'][contains(text(),'Profile')]
    builtin.sleep    3s
    click link    //div[1]/ul[1]/li[3]/ul[1]/li[2]/a[1]
    builtin.sleep    2s

Validate PageObjects
    BuiltIn.sleep    5s
    element text should be    //h3[contains(text(),'${USER_NAME}')]    ${USER_NAME}
    element text should be    //span[contains(text(),'${USER_NAME}')]    ${USER_NAME}
    element text should be    //h3[contains(text(),'Profile Status')]    Profile Status
    element text should be    //h4[contains(text(),'Need Help?')]    Need Help?
    element text should be    //p[contains(text(),'Do you need help to build your profile?')]    Do you need help to build your profile?
    page should contain element    //span[contains(text(),'Profile Builder')]
    page should contain link    //a[contains(text(),'About')]
    page should contain link    //a[contains(text(),'Careers')]
    page should contain link    //a[contains(text(),'Help & Support')]
    page should contain link    //a[contains(text(),'Privacy')]
    page should contain link    //a[contains(text(),'Terms')]
    page should contain link    ${BOTTOM_PAGELINK_LINKEDIN}
    page should contain link    ${BOTTOM_PAGELINK_FACEBOOK}
    page should contain link    ${BOTTOM_PAGELINK_TWITTER}
    page should contain link    ${BOTTOM_PAGELINK_INSTAGRAM}
    page should contain link    ${BOTTOM_PAGELINK_YOUTUBE}
    element text should be    //span[contains(text(),'© 2020 4GEN Technologies Pvt. Ltd. All Rights Rese')]    © 2020 4GEN Technologies Pvt. Ltd. All Rights Reserved.
    element text should be    //div[contains(text(),'Personal Details')]    Personal Details
    element text should be    //div[contains(text(),'Education Details')]    Education Details
    element text should be    //div[contains(text(),'Employment Details')]    Employment Details
    element text should be    //div[contains(text(),'Projects')]    Projects
    element text should be    //div[contains(text(),'Skills')]    Skills
#    element text should be    //div[contains(text(),'Preferences')]    Preferences
    page should contain element    //a[contains(text(),'Resume')]
    page should contain element    //span[contains(text(),'Video Profile')]

Validate Personal Details
    builtin.sleep    5s
    click element    //div[contains(text(),'Personal Details')]
    #Validate Object Attributes
    element text should be    //h4[contains(text(),'Full Name')]    Full Name
    element text should be    //h4[contains(text(),'Date of Birth')]    Date of Birth
    element text should be    //h4[contains(text(),'Email ID')]    Email ID
    element text should be    //h4[contains(text(),'Contact Number')]    Contact Number
    element text should be    //h4[contains(text(),'Current Location')]    Current Location
    element text should be    //h4[contains(text(),'Nationality')]    Nationality
    #Validate the Data filled in Update Profile Section
    element text should be    //h3[contains(text(),'${USER_NAME}')]    ${USER_NAME}
    element text should be    //p[contains(text(),'${USER_NAME}')]    ${USER_NAME}
    element text should be    //h5[contains(text(),'${CURRENT_LOCATION}')]    ${CURRENT_LOCATION}
    element text should be    //p[contains(text(),'${EMAIL}')]    ${EMAIL}
    element text should be    //p[contains(text(),'${CONTACT_NO}')]    ${CONTACT_NO}
    element text should be    //p[contains(text(),'${CURRENT_LOCATION}')]    ${CURRENT_LOCATION}
    element text should be    //p[contains(text(),'${NATIONALITY}')]    ${NATIONALITY}

Validate Educational Details
    click element    //div[contains(text(),'Education Details')]
    builtin.sleep    5s
    #Validate Page Objects
    element text should be    //h4[contains(text(),'Highest Qualifications')]    Highest Qualifications
    element text should be    //h4[contains(text(),'Degree')]    Degree
    element text should be    //h4[contains(text(),'Specialization')]    Specialization
    element text should be    //h4[contains(text(),'Institute')]    Institute
    element text should be    //h4[contains(text(),'Education Type')]    Education Type
    element text should be    //h4[contains(text(),'Passing Year and Month')]    Passing Year and Month
    #Validate the data filled in the update profile section
    element text should be    //p[contains(text(),'${DEGREE}')][1]    ${DEGREE}
    element text should be    //p[contains(text(),'${SPECIALIZATION}')][2]    ${SPECIALIZATION}
    element text should be    //p[contains(text(),'${INSTITUTE}')]    ${INSTITUTE}

Validate Employment Details
    click element    //div[contains(text(),'Employment Details')]
    builtin.sleep    2s
    element text should be    //span[contains(text(),'No More Details About Employment !!!')]    No More Details About Employment !!!

Validate Project Details
    click element    //div[contains(text(),'Projects')]
#    builtin.sleep    2s
#    element text should be    //h4[@xpath='8']    Title

Validate Skill Details
    builtin.sleep    2s
    click element    //div[contains(text(),'Skills')]

#Validate Preferences
#    builtin.sleep    2s
#    click element    //div[contains(text(),'Preferences')]

