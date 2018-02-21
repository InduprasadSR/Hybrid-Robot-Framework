import xlrd
import os.path
import json


# workbook = xlrd.open_workbook('..\\DataSets\\Json_input_data.xlsx')
workbook = xlrd.open_workbook('..\\DataSets\\Json_input_data.xlsx', on_demand = True)
worksheet = workbook.sheet_by_name('Sheet1')
jsonvalue = {}


jfirst_row = [] # Header
for col in range(worksheet.ncols):
    jfirst_row.append( worksheet.cell_value(0,col) )



# tronsform the workbook to a list of dictionnaries
jdata =[]
for row in range(1, worksheet.nrows):
    jelm = {}
    for col in range(worksheet.ncols):
        jelm[jfirst_row[col]]=worksheet.cell_value(row,col)
    jdata.append(jelm)
    
nested_dict={}
for  i in range(len(jfirst_row)):
    for nsize in range(len(jdata)):
        if jdata[nsize]['Data_Index']=='Request_1':   
            if '{'  in  jdata[nsize][jfirst_row[i]]:
                nd=json.dumps(jdata[nsize][jfirst_row[i]])
                jsonvalue[jfirst_row[i]]=nd
            else:                          
                jsonvalue[jfirst_row[i]]=jdata[nsize][jfirst_row[i]]
        
       
# print  jsonvalue

r = json.dumps(jsonvalue)
loaded_r = json.loads(r)

print r




