*** Settings ***
Library           Selenium2Library
Library           ../PythonUtils/Excel_Data_Read.py
Resource          ../Object Repository/Locators.robot
Library           ../PythonUtils/Browser_select.py
Resource          ../PythonUtils/HeadLess.robot

*** Keywords ***

Login_To_GuideWire
    [Arguments]    ${T_case}
    ${url}    get_data       ${T_case}    URL    Login 
    ${bPath}  get_browser_path     ${browser_name}
    Create Webdriver       ${browser_name}       executable_path=${bPath}
    Go To       ${url}
    #Open Browser    ${url}    ${browser_name}
    Maximize Browser Window
    ${username}    get_data       ${T_case}    UserName    Login
    Input Text    ${pc_username}    ${username}
    ${password}    get_data       ${T_case}    Password    Login
    Input Password    ${pc_Password}    ${password}
    Click Element    ${pc_login_button}
    Set Selenium Timeout    0.1 seconds
    Run Keyword And Continue On Failure    Page Should Contain Element    ${pc_acc_drop_down}    
    Capture Page Screenshot
    
Create_Account
    [Arguments]    ${T_case}
     Page Should Contain Element    ${pc_acc_drop_down}
    Click Element At Coordinates    ${pc_acc_drop_down}    30    10
    Click Element    ${pc_new_account}
    # Click Element    ${pc_action}
    # Click Element    ${pc_new_account}
    ${getcompanyName}    get_data       ${T_case}    Company    PolicyCenter
    Input Text    ${company_name_Locator}    ${getcompanyName}
    ${getCountryName}    get_data       ${T_case}    Country    PolicyCenter
    Click Element    ${picker}
    ${presentelement}=     Run Keyword And Return Status     Page Should Contain Element      ${country} 
    Run Keyword If    ${presentelement}    Input Text    ${country}    United States
    # Click Element    ${title}
    Click Element    ${search_button}
    Click Element    ${Create_new_account}
    Click Element    ${create_new_company}
    ${Address_Line_1}    get_data        ${T_case}    Address1    PolicyCenter
    Input Text    ${companyAddress1}    ${Address_Line_1}
    Click Element    ${CreateAccount_Tittle}
    Sleep    1 seconds
    ${com_City}    get_data      ${T_case}    City    PolicyCenter
    Click Element    ${CreateAccount_Tittle}
    Sleep    1 seconds
    Input Text    ${city}    ${com_City}
    Sleep    1 seconds
    ${com_state}    get_data     ${T_case}    State    PolicyCenter
    Click Element    ${CreateAccount_Tittle}
    Sleep    1 seconds
    Input Text    ${state}    ${com_state}
    Click Element    ${CreateAccount_Tittle}
    Sleep    1 seconds
    ${com_Zip}    get_data       ${T_case}    ZipCode    PolicyCenter
    Click Element    ${CreateAccount_Tittle}
    Sleep    1 seconds
    Input Text    ${ZIP_Code}    ${com_Zip}
    ${com_AddressType}    get_data      ${T_case}    AddressType    PolicyCenter
    Click Element    ${CreateAccount_Tittle}
    Sleep    1 seconds
    Input Text    ${Address_Type}    ${com_AddressType}
    Click Element    ${CreateAccount_Tittle}
    Sleep    1 seconds
    Click Element    ${CreateAccount_Tittle}
    Click Element    ${CreateAccount_Tittle}
    Sleep    1 seconds
    Click Element    ${Standardise}
    Sleep    1 seconds
    Click Element    ${Standerdize_ok}
    Click Element    ${CreateAccount_Tittle}
    Sleep    1 seconds
    Click Element    ${Update}
    Sleep    1 seconds
    ${Account}    Get Text    ${Account_Number}
    Log    ${Account}
    Close Browser



