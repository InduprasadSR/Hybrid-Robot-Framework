import xlrd
import os.path

def wb(wbval):
    workbook = xlrd.open_workbook('..\\DataSets\\Robot.xlsx')
    workbook = xlrd.open_workbook('..\\DataSets\\Robot.xlsx', on_demand = True)
    worksheet = workbook.sheet_by_name(wbval)
    first_row = [] # Header
    first_col = [] # Header
    for col in range(worksheet.ncols):
        first_row.append( worksheet.cell_value(0,col) )

    # tronsform the workbook to a list of dictionnaries
    data =[]
    for row in range(1, worksheet.nrows):
        elm = {}
        for col in range(worksheet.ncols):
            elm[first_row[col]]=worksheet.cell_value(row,col)
        data.append(elm)
    return data  
    workbook.close()

def get_data(caseName,value,wbs):
    data=wb(wbs)
    for size in range(len(data)):
        if data[size]['Data_Index']==caseName:
            return data[size][value]