*** Settings ***
Library           Selenium2Library
Resource          ../Object Repository/Locators.robot
Library           ../PythonUtils/Excel_Data_Read.py
Resource          ../Keywords/policyCenter.robot


*** Keywords ***

HeadLess
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${options}    add_argument    headless
    Call Method    ${options}    add_argument    disable-gpu
    Create Webdriver       Chrome       executable_path=C:\\Users\\Induprasad.SR\\Desktop\\RF\Robot_Framework\\Drivers\\chromedriver.exe            chrome_options=${options}
    Goto  http://gwportal.cloudapp.eyme.net/gateway-portal/html/
    Maximize Browser Window