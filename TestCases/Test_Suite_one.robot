*** Settings ***
Library           Selenium2Library
Resource          ../Object Repository/Locators.robot
Library           ../PythonUtils/Excel_Data_Read.py
Resource          ../Keywords/policyCenter.robot
Test Teardown      Close Browser



*** Test Cases ***
Test_Case_LoginTo_PolicyCenter
    Login_To_GuideWire    PolicyCenter
    Run Keyword And Ignore Error    Close Browser
    
Test_Case_LoginTo_ClaimCenter
    Login_To_GuideWire    ClaimCenter
    Run Keyword And Ignore Error    Close Browser

Test_Case_CreateAccount_PolicyCenter  
    Login_To_GuideWire    PolicyCenter
    Create_Account        Test_1
    Run Keyword And Ignore Error    Close Browser

