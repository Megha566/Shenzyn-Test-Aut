*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Validate PageObjects
    BuiltIn.sleep    5s

Skills
    clear element text    //input[@id='skillName-0']
    input text    //input[@id='skillName-0']    Cloud Computing
    click element    //div[2]/div[1]/div[1]/div[1]/span[1]/button[1]
    click element    //div[2]/div[1]/div[1]/div[1]/span[1]/button[1]

Languages
    clear element text    //input[@id='language-0']
    input text    //input[@id='language-0']    Hindi, English, Punjabi

Bio
    clear element text    //textarea[@id='briefBio']
    input text    //textarea[@id='briefBio']    Testing Bio field.

NextPage
    click element    //div[1]/div[1]/section[1]/article[1]/div[3]/button[2]
