*** Settings ***
Documentation    this will handle common functionality
...    
Library    AppiumLibrary
Library    Process

*** Keywords ***
Open Native Application

    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android    DeviceName=emulator    
    ...     appPackage=com.paytmmall
    ...     appActivity=com.paytmmall.MainActivity
    ...     noReset=true
    Set Appium Timeout    45s
   
For Close App
     Close Application