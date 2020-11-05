*** Settings ***
Library    AppiumLibrary
Library    Process
Resource    ../Resources/CommonFunctionality.resource

*** Test Cases ***
TC_1_OrderStatus
    Open Native Application
    Sleep    5s    
    Wait Until Element Is Visible    //*[@resource-id="com.paytmmall:id/rl_root"][5]   
    Click Element    //*[@resource-id="com.paytmmall:id/rl_root"][5]
    Wait Until Element Is Visible    //*[@text='My Orders']    
    Click Element    //*[@text='My Orders']
    # sleep    5s
    # ${views}    Get Contexts
    # Log To Console    ${views}   
    # ${views}    Get Source 
     # Log To Console    ${views}   
    Wait Until Element Is Visible    //*[contains(@text,'Delivered')]    
    Click Element    //*[contains(@text,'Delivered')]
    Wait Until Element Is Visible    //*[contains(@text,'Tracking')]    
    Click Element    //*[contains(@text,'Tracking')]
     # ${views}    Get Source 
     # Log To Console    ${views}
     For Close App
     
TC_2_SearchAndAddToCart
    Open Native Application
    Sleep    5s    
    # Wait Until Element Is Visible    //*[@resource-id="com.paytmmall:id/rl_root"][5]   
    # Click Element    //*[@resource-id="com.paytmmall:id/rl_root"][5]
    Wait Until Element Is Visible    //*[@text='Search for Products, Brands and More']    
    Click Element    //*[@text='Search for Products, Brands and More']
    sleep     5s    
    Input Text     //*[@text='Search Paytm Mall']    i phone
    Sleep    5s    
    Click Element    //*[@text='i phone 11']
    # Sleep    10s    
    # ${views}    Get Source 
    # Log To Console    ${views}
    For Close App
   
TC_3_ViewCartandValidatetopay
    Open Native Application
    Sleep    5s 
    Wait Until Element Is Visible    //*[@resource-id='com.paytmmall:id/clp_toolbar_cart']       
    Click Element    //*[@resource-id='com.paytmmall:id/clp_toolbar_cart']
    Sleep    5s    
    Wait Until Element Is Visible    //*[contains(@text,'4TY HANDS')]    
    Click Element    //*[contains(@text,'Change')]
    Sleep    5s    
    Wait Until Element Is Visible    //*[contains(@text,'Default')]    
    Click Element    //*[contains(@text,'Default')]
    Sleep    5s    
    
    
Tc_4Validate to Pay
    Open Native Application
    Sleep    5s 
    Wait Until Element Is Visible    //*[@resource-id='com.paytmmall:id/clp_toolbar_cart']       
    Click Element    //*[@resource-id='com.paytmmall:id/clp_toolbar_cart']  
    
    Sleep    5s    
    Wait Until Element Is Visible    //*[contains(@text,'Proceed to pay')]    
    Click Element    //*[contains(@text,'Proceed to pay')]
    Sleep    5s    
    Wait Until Element Is Visible    //*[contains(@text,'Pay')]    
    For Close App
    
Tc_5_Swipe to latest deal
    Open Native Application
    Sleep    5s 
    Wait Until Element Is Visible    //*[@resource-id="com.paytmmall:id/rl_root"][5]   
    Sleep    5s
    Swipe By Percent    50    75    50    25    1000   
    Wait Until Element Is Visible    //*[contains(@text,'View All')]    
    Click Element    //*[contains(@text,'View All')]
    Sleep    10s    
    For Close App

























    





