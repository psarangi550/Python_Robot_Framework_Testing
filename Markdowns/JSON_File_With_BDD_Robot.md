# <ins>How to use JSON with Robot Framework

- It's not recommended to put the element locator in the `*** TestCases ***`
- It's always best to put the element locator in the JSON file and read it from there 
- so if we have to change any locator we can just change  the JSON File but not anything on the TestCases Level


### <ins> How to Maintain element Locator in the JSON File and use it in the TestCases from the JSON File

- we can create the user defined keyword to read the locator from the JSON file and use it in the TestCases
- as the `<locator name>:<locator value>` are most of the time present in TestCases we can make that as JSON file and use it from the JSON file using the custom user defined keywords
- 