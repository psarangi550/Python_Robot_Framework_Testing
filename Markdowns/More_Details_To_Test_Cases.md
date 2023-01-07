# <ins> How to Add Documentation in Test Cases and User Defined Keywords


### Documentation

- we can  add Documentation to the Test Cases as well as User Defined Keyword in Resources folder for providing More info by using the 
  `[Documentation]<2-space><any-str>`
- we can also define in the Test Suite that is in the file level as well by using below i.e is by 
  `Documentation<2-space><any String>` but on the `*** Settings *** ` Area

### Timeout

- by defining the timeout we can bound the Test Cases or Test Suite to a particular time duration if that passes then it will be failed 
- we can use the TimeOut in the area as `[Timeout]<2-space><no>s/<no>min` in the TestCases or User Defined Keyword in the Resources Section 
- we can also define the timeout as `Test Timeout <2-space> <no>s/<no>min` in the `***Settings***` Section which will be for the Test Suite Level


##### we can see the info in the `report.html` page

