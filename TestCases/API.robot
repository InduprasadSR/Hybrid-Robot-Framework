*** Settings ***
Library           Selenium2Library
Library           RequestsLibrary
Library           ../PythonUtils/CreateJson.py
Library           ../PythonUtils/API_Post_Request.py

*** Test Cases ***
# Get_Value
#     Create Session      api_session     http://disbbe-dev.northcentralus.cloudapp.azure.com:8080
#     ${response}  Get Request     api_session     createPolicy
#     ${json} =  Set Variable     ${response.json()}
#     ${status_Code}=  Set Variable     ${response.status_code}
#     Log     ${status_Code}
#     Log     ${json}
    

# Create_Dictionary
#     ${dict1}            Create Dictionary     firstname=Indu     lastname=prasad
#     ${Addressparam}     Create Dictionary     Street=11th Street    pincode=560078
#     ${Address}          Create Dictionary     Address=${Addressparam}
#     ${finalJson}=       concatenateDict       ${dict1}
#     ${finalJson}=       concatenateDict       ${Address}  
#     Log                 ${finalJson}

Post_request_json    
      ${response_status}   post_json_request
      Log   ${response_status}
