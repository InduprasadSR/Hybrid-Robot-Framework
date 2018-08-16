import os, sys
import urllib2
from urllib2 import Request, urlopen, URLError
from requests.auth import HTTPDigestAuth
import requests
import json


with open('../PythonUtils/json_request.json') as json_data:
    data = json.load(json_data)
    print(data)

def post_json_request():
    
    req = urllib2.Request('http://end_point.azure.com:8080/createPolicy')
    req.add_header('Content-Type','application/json')
    #data = json.dumps(payload)
    headers = {'content-type': 'application/json'}
    url='http://disbbe-dev.northcentralus.cloudapp.azure.com:8080/createPolicy'
    #response = urllib2.urlopen(req,data)
    r = requests.post(url, data,headers=headers )
    return  r.text
