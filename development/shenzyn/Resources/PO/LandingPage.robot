*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Load
    Go to   ${START_URL}

Verify Page Loaded
    MAXIMIZE BROWSER WINDOW
    wait until page contains    Wear your superwoman cape and fly high
    wait until page contains    Fasten your seat belt for a thrilling and successful career ride.
    wait until page contains    By logging using 3rd party medium, I agree the
    wait until page contains    Don't have an account yet? Sign up
    wait until page contains    Forgot your username or password? Reset password
    wait until page contains    Remember me

Validate the PageObjects
    page should contain    Wear your superwoman cape and fly high
    page should contain    Fasten your seat belt for a thrilling and successful career ride.
    page should contain    By logging using 3rd party medium, I agree the
    page should contain    Don't have an account yet? Sign up
    page should contain    Forgot your username or password? Reset password
    page should contain    Remember me
    page should contain element    //input[@id='emailId']
    page should contain element    //input[@id='password']
    page should contain element    //a[contains(text(),'Terms and Conditions')]
    page should contain element    //a[contains(text(),'Sign up')]
    page should contain element    //a[contains(text(),'Reset password')]
    page should contain element    //span[contains(text(),'Login with Gmail')]
    page should contain element    //span[contains(text(),'Login with LinkedIN')]
    page should contain element    //div[4]/div[1]/div[1]/span[1]/button[1]
    page should contain image    Shenzyn
    page should contain link    https://www.shenzyn.com/
    page should contain checkbox    //input[@id='login2-remember']

#Validate Links
#    click element    //span[contains(text(),'Login with Gmail')]
#    click button    value=Login with Gmail
