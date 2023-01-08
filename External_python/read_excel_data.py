import openpyxl
# from typing import List, String

def read_data(location:str)->list:
    wk=openpyxl.load_workbook(location)
    sh=wk.active
    output=[]
    for row in sh["A1":"C2"]:
        total=[]
        for col in row:
            total.append(col.value)
        output.append(total)
    return output


# if __name__ == "__main__":
#     print(read_data("C:\\Users\\psara\\Downloads\\Python_Robot_Framework_Testing\\External_python\\book3.xlsx"))
    

