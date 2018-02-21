import xlrd


def get_browser(Browser_name):
    workbook_browser = xlrd.open_workbook('..\\DataSets\\ExecutionDriver.xlsx', on_demand = True)
    worksheet_browser = workbook_browser.sheet_by_name('Browsers')
    first_brow = [] # Header
    for col in range(worksheet_browser.ncols):
        first_brow.append( worksheet_browser.cell_value(0,col) )

    # tronsform the workbook to a list of dictionnaries
    browser_data =[]
    for row in range(1, worksheet_browser.nrows):
        bElement = {}
        for col in range(worksheet_browser.ncols):
            bElement[first_brow[col]]=worksheet_browser.cell_value(row,col)
        browser_data.append(bElement)


    for i in range(0,len(browser_data)):
       if  browser_data[i]['Browser']==Browser_name:
            bPath=browser_data[i]['Path']
    return bPath


def get_browser_path(bName):
    return  get_browser(bName)


