*** Settings ***
Library           Selenium2Library
Library           ../PythonUtils/Excel_Data_Read.py
Resource          ../Object Repository/Locators.robot
Library           ../PythonUtils/Browser_select.py
Resource          ../PythonUtils/HeadLess.robot

*** Keywords ***

OpenPortal
    ${bPath}  get_browser_path     ${browser_name}             
    Create Webdriver       ${browser_name}       executable_path=${bPath}
    Go To    http://gwportal.cloudapp.eyme.net/gateway-portal/html/  
    Set Selenium Speed   3s  
    Click Element   ${quoteLink} 
    Input Text      ${companyName}               Company123
    Click Element     ${portal_Search_button}
    Click Element     ${countinuetoNewCutomer} 
    Input Text       ${Address_Line_1}      21st Main
    Input Text       ${company_city}       Montgomery
    Input Text       ${company_zip_code}   36043
    Select From List   ${state_select}     Alabama
    Capture Page Screenshot
    Close Browser

OpenPortalHeadLess
    HeadLess
    Set Selenium Speed   1s  
    Click Element   ${quoteLink} 
    Input Text      ${companyName}               Company123
    Click Element     ${portal_Search_button}
    Click Element     ${countinuetoNewCutomer} 
    Input Text       ${Address_Line_1}      21st Main
    Input Text       ${company_city}       Montgomery
    Input Text       ${company_zip_code}   36043
    Select From List   ${state_select}     Alabama
    Capture Page Screenshot
    Close Browser


   