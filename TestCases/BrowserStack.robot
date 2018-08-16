*** Settings ***
Library           Selenium2Library
Resource          ../Object Repository/Locators.robot
Library           ../PythonUtils/Excel_Data_Read.py
Resource          ../Keywords/policyCenter.robot
Resource          ../PythonUtils/HeadLess.robot

*** Variable ***

${RemoteURL}        http://prasad21200:23qX1DDcWCF85WmsDanw@hub.browserstack.com:80/wd/hub
${StackBrowser}     Chrome
${BROWSER_VERSION}    62


*** Test Case ***

BrowserStackDemo    
    Open Browser   url=http://www.google.com    browser=${StackBrowser}   remote_url=${RemoteURL}   desired_capabilities=browser:${StackBrowser},browser_version:${BROWSER_VERSION},os:Windows,os_version:10
    Open Application    http://prasad21200:23qX1DDcWCF85WmsDanw@hub.browserstack.com:80/wd/hub     platformName=MAC         deviceName=iPhone 6S         browserName=iPhone
    Go To Url           http://facebook.com
    
