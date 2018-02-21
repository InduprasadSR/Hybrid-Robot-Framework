*** Settings ***
Library    AppiumLibrary

*** Test Case ***

# MobileTestingNativeApp
#   Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android  deviceName=emulator-5554    platformVersion=8.1.0    app=C:\\Users\\Induprasad.SR\\Downloads\\ContactManager.apk
#   Click Element       id=addContactButton      
#   #Click Element      id=accountSpinner
#   Input Text          id=contactNameEditText        Abc
#   Input Text          id=contactPhoneEditText       987764872
#   Click Element       id=contactPhoneTypeSpinner
#   Click Element       xpath=//*[@text='Mobile']
#   Click Element       id=contactSaveButton
#   Close Application

MobileTestingWebApp
   
  Open Application    http://127.0.0.1:4723/wd/hub    platformName=Android  deviceName=emulator-5554    platformVersion=8.1.0    browserName=Chrome
  Go To Url           https://in.finance.yahoo.com/
  Sleep   5s
  Click Element       id=uh-menu
  Sleep   5s
  Click Element       //*[@content-desc='Movies'] 