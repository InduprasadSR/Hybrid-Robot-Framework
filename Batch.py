import xlrd
import os.path
import subprocess
import os

#os.system("..\\Robot_Framework\\PythonUtils\\DependencyLibrary.py")
#workbook_master = xlrd.open_workbook('..\\Robot_Framework\\DataSets\\ExecutionDriver.xlsx')
workbook_master = xlrd.open_workbook('..\\Robot_Framework\\DataSets\\ExecutionDriver.xlsx', on_demand = True)
worksheet_master = workbook_master.sheet_by_name('ExecutionSuite')
first_mrow = [] # Header
for col in range(worksheet_master.ncols):
    first_mrow.append( worksheet_master.cell_value(0,col) )

# tronsform the workbook to a list of dictionnaries
master_data =[]
for row in range(1, worksheet_master.nrows):
    mElement = {}
    for col in range(worksheet_master.ncols):
        mElement[first_mrow[col]]=worksheet_master.cell_value(row,col)
    master_data.append(mElement)

os.chdir("TestCases")
AllExecutableCasesList=[]
TestSuite=[]
for i in range(0,len(master_data)):
    tCase=master_data[i]['Test Case']
    print tCase
    eStatus=master_data[i]['Execution']
    tSuite=master_data[i]['Test Suite']
    if eStatus=='Yes':
        AllExecutableCasesList.append(tCase)
        TestSuite.append(tSuite)

AllExecutables =" -t  ".join(AllExecutableCasesList)
AllTestSuite=set(TestSuite)
tSuite="  ".join(AllTestSuite)

#Parallel Execution
BatchCommand="start cmd /c pabot  -t "+AllExecutables+" -d  ../Reports/%date:~6,4%-%date:~3,2%-%date:~0,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%  "+tSuite
#Seaquencial execution
#BatchCommand="start cmd /c pybot  -t "+AllExecutables+" -d  ../Reports/%date:~6,4%-%date:~3,2%-%date:~0,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%  "+tSuite
print BatchCommand
os.system(BatchCommand)
    
