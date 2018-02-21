*** Settings ***
Library           Selenium2Library


*** Variable ***

${RemoteURL}        http://Induprasad:88b56f5d-04da-4186-b50d-13f9e2f8670d@ondemand.saucelabs.com:80/wd/hub
${StackBrowser}     Chrome
${BROWSER_VERSION}    63

*** Test Cases ***

Test_Sauce_Lab
    Open Browser   url=http://gwportal.cloudapp.eyme.net/gateway-portal/html/    browser=${StackBrowser}   remote_url=${RemoteURL}   desired_capabilities=browser:${StackBrowser},browser_version:${BROWSER_VERSION},os:Windows,os_version:10  
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