import openpyxl

excel_sheet = openpyxl.load_workbook("../Utils/book1.xlsx")
sheet = excel_sheet.active
for col in sheet["A1":"C5"]:
    for r1 in col:
        print(r1.value)
