*** Settings ***
Library           Selenium2Library
Resource          ../Object Repository/Locators.robot
Library           ../PythonUtils/Excel_Data_Read.py
Resource          ../Keywords/policyCenter.robot
Resource          ../PythonUtils/HeadLess.robot
Resource          ../Keywords/GW_Portal.robot
Test Teardown      Close All Browsers

*** Test Cases ***

GW_Portal
    OpenPortal

GW_Portal_HeadLess    
    OpenPortalHeadLess
    

