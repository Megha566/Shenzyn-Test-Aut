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
    element text should be    //h1[contains(text(),'Wear your superwoman cape and fly high')]   Wear your superwoman cape and fly high
    element text should be    //p[contains(text(),'Fasten your seat belt for a thrilling and successf')]   Fasten your seat belt for a thrilling and successful career ride.
    element text should be    //div[2]/section[1]/p[2]    By logging using 3rd party medium, I agree the Terms and Conditions
    element text should be    //div[2]/section[1]/p[3]    Don't have an account yet? Sign up
    element text should be    //div[2]/section[1]/p[4]    Forgot your username or password? Reset password
    element text should be    //span[contains(text(),'Remember me')]    Remember me
    page should contain textfield    //input[@id='emailId']
    page should contain textfield    //input[@id='password']
    page should contain link    //a[contains(text(),'Terms and Conditions')]
    page should contain link    //a[contains(text(),'Sign up')]
    page should contain link    //a[contains(text(),'Reset password')]
    page should contain element    //span[contains(text(),'Login with Gmail')]
    page should contain element    //span[contains(text(),'Login with LinkedIN')]
    page should contain element    //div[4]/div[1]/div[1]/span[1]/button[1]
    page should contain image    Shenzyn
    page should contain link    https://www.shenzyn.com/
    page should contain checkbox    //input[@id='login2-remember']

