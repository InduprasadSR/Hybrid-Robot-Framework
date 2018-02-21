*** Variables ***
#Browser
                          
${browser_name}        Edge

#Login Page
${pc_username}        id=Login:LoginScreen:LoginDV:username-inputEl
${pc_Password}        id=Login:LoginScreen:LoginDV:password-inputEl
${pc_login_button}    id=Login:LoginScreen:LoginDV:submit-btnInnerEl
${pc_desktop_page}    id=DesktopActivities:DesktopActivitiesScreen:0
${Login_Error}        id=Login:LoginScreen:LoginFormMessage

#Account page
${pc_acc_drop_down}    id=TabBar:AccountTab
${pc_action}           id=Desktop:DesktopMenuActions-btnInnerEl
${country}             id=NewAccount:NewAccountScreen:NewAccountSearchDV:AddressOwnerAddressInputSet:globalAddressContainer:GlobalAddressInputSet:Country-inputEl
${pc_new_account}      id=TabBar:AccountTab:AccountTab_NewAccount-textEl
${title}               id=NewAccount:NewAccountScreen:ttlBar
${company_name_Locator}     name=NewAccount:NewAccountScreen:NewAccountSearchDV:GlobalContactNameInputSet:Name
${search_button}        id=NewAccount:NewAccountScreen:NewAccountSearchDV:SearchAndResetInputSet:SearchLinksInputSet:Search
${Create_new_account}   id=NewAccount:NewAccountScreen:NewAccountButton
${create_new_company}   id=NewAccount:NewAccountScreen:NewAccountButton:NewAccount_Company-textEl
${companyAddress1}      id=CreateAccount:CreateAccountScreen:CreateAccountDV:AddressInputSet:globalAddressContainer:GlobalAddressInputSet:AddressLine1-inputEl
${city}                 id=CreateAccount:CreateAccountScreen:CreateAccountDV:AddressInputSet:globalAddressContainer:GlobalAddressInputSet:City-inputEl
${state}                id=CreateAccount:CreateAccountScreen:CreateAccountDV:AddressInputSet:globalAddressContainer:GlobalAddressInputSet:State-inputEl
${ZIP_Code}             id=CreateAccount:CreateAccountScreen:CreateAccountDV:AddressInputSet:globalAddressContainer:GlobalAddressInputSet:PostalCode-inputEl
${Address_Type}         id=CreateAccount:CreateAccountScreen:CreateAccountDV:AddressType-inputEl
${CreateAccount_Tittle}     id=CreateAccount:CreateAccountScreen:ttlBar
${Update}               id=CreateAccount:CreateAccountScreen:ForceDupCheckUpdate-btnInnerEl
${Standardise}          id=CreateAccount:CreateAccountScreen:CreateAccountDV:AddressInputSet:globalAddressContainer:GlobalAddressInputSet:StandardizeToolbar:ToolbarButton-btnInnerEl
${Standerdize_ok}       id=PolicyAddressStandardize_inxPopup:Update-btnInnerEl
${Account_Number}       id=AccountFile:AccountFileInfoBar:Account-btnInnerEl

${picker}               id=NewAccount:NewAccountScreen:NewAccountSearchDV:AddressOwnerAddressInputSet:globalAddressContainer:GlobalAddressInputSet:Country-trigger-picker
${select_country}       xpath=//ul



#Portal

${quoteLink}                 xpath=//a[@ui-sref='newQuoteSearch']
${companyName}               xpath=//span[contains(text(),'Company')]//..//..//input
${portal_Search_button}      xpath=//span[contains(text(),'Company')]/..//..//..//..//..//..//..//button[contains(text(),'Search')]
${countinuetoNewCutomer}     xpath=//button[contains(text(),'Continue as a New Customer')]
${Address_Line_1}            xpath=//label/span[contains(text(),'Address Line 1')]//..//..//input
${company_city}              xpath=//label//span[contains(text(),'City')]//..//..//input
${company_zip_code}          xpath=//label//span[contains(text(),'ZIP')]//..//..//input
${state_select}              xpath=//span[contains(text(),'Email')]//..//..//..//..//..//label//span[contains(text(),'State')]//..//..//select
