*** Settings ***
Library           Selenium2Library
Resource          ../Object Repository/Locators.robot
Library           ../PythonUtils/Excel_Data_Read.py
Resource          ../Keywords/policyCenter.robot



*** Test Cases ***

FeatureSyntaxTest
    Given User is on Portal Home Page
    When User Navigate to Home Page
    Then Message displayed Home Successfully   

*** Keywords ***

User is on Portal Home Page
    Log    User is in portal Dashboard
User Navigate to Home Page 
    ${bPath}  get_browser_path     ${browser_name}
    Create Webdriver       ${browser_name}       executable_path=${bPath}
    Go To       http://gwportal.cloudapp.eyme.net/gateway-portal/html

Message displayed Home Successfully 
    Sleep   5s
    Capture Page Screenshot
    Log     Successfully Navigated to portal
    Close Browser


     