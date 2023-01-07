# <ins>How to Read and Write excel using the OpenPyXl

- To Open the Workbook we have to use as `<workbook -obj>=openpyxl.load_workbook('<path to the excel work book>')`
- `<workbook obj>.sheetnames` will provide all sheet available in the workbook
- `<act sheet obj>=<workbook obj>.active` will provide the active sheet object in the workbook that we created
- from the active sheet object we can find different attribute such as title by using `<active-sheet-obj>.title`
- but we can create the object of any sheet we have to use
  `<sheet obj>=<workbook obj>["sheet title name"]`
- from that also we can fetch the title as `<sheet obj>.title`

### <ins>How to Read the Excel File One Cell Data

- we can read one cell data using `<cell val>=<sheet obj>["<cell>"].value` 
- we can also read by using below approach as well 
 `<cell obj>=<sheet obj>.cell(<x-cord>,<y-cord>)` or 
  `<cell obj>=<sheet obj>.cell(row=<x-cord>,column=<y-cord>)` as the keyword args
  and from there we can fetch the value using `<cell obj>.value`
- we can also fetch the row as `<row val>=<cell obj>.row`
- we can find the column as `<column val>=<cell obj>.column`

### <ins>How to Read the Excel File All Cell Data

-  for reading the complete data we need to know how many row are there in the sheet and how many column are there in the sheet
- for fetching the maximum row we have to use as `<total row>=<sheet obj>.max_row`
- similarly we can find the maximum column as `<total column>=<sheet obj>.max_column`
- Then we can run the For Loop to read the Excel data
    ```commandline
    for i in range (1,<total_row>+1):
        for j in range (1,<total_columns>+1):
            print(<sheet-obj>.cell(i,j).value)
    ```
- other approach can be
    ```commandline
    for row in <sheet obj>["<start cell index>":"<end cell index>"]:
        for col in row:
            print(col.value)
    ```
### <ins>How to Write the Excel File One and All Cell Data

- for creating the workbook we have to use as `<workbook obj>=openpyxl.Workbook`
- a workbook will be created internally but saved
- this also create a default active sheet as `sheet1`
- we can find its title as `<title of the sheet>=openpyxl.Workbook().active.title`
- we can change the title as below
    ```
    <sheet obj>=openpyxl.Workbook().active
    <sheet obj>.title="<any str>"
    print(<sheet obj>.title)
    ```
- we can create a new sheet on the workbook apart from the active one by using below
    `<workbook obj>.create_sheet(title="<any name>")`
- This will create a new sheet on the memory but not being displayed
- if we want to display we need to save the workbook for that we have to use `<workbook obj>.save("<location to save>")`
- we can also create the sheet object by using `<sheet obj>=<workbook obj>["<sheet title>"]`
- we can write to one cell using the `<particular sheet obj>["<cell index>"].value=<any value>`
- or we can use the cell object as `<particular-sheet-obj>.cell(<row>,<column>).value=<any value>`


### <ins> How to Remove a Sheet from the workbook
- we can remove a particular sheet from workbook using 
  `<workbook obj>.remove(<particular-sheet-obj>)` and then save the workbook as 
   `<workbook-obj>.save("<location where to save>")`