# <ins>Test Suite In Robot Framework

- each `.robot` file behave as a Test Suite which has multiple TestCases in between them
- But we can consider the Sub-folder and Folder as Test Case as well which can be executed by `robot <sub-folder/folder>` 
  - This will execute all the `.robot` in the sub folder and their co-responding TestCases
  - A which have multiple `.robot` file or `sub-folder which has multiple .robot file` considered as the Test Suites 
  - `.robot` file considered as the Low Level Test Suite
  - whereas `sub folder and folder` considered as high level Test Suite
- we can see all those info in `report.html` file


### For Test Suite i.e. Low Level Test Suite i.e. `.robot` File 
- Before and After Suite as `Suite Setup<2-space><Keyword>` and `Suite TearDown <2-space><keyword>` in the `***Settings***` Section of the Test Case
- we can see all those info in `report.html` file


### For Test Suite  which is in the Folder and Sub-Folder Level
- For the Folder and Sub Folder Level To execute the Before and After Script before all the Test Suite Underneath the folder and Sub-folder to run we have to create `__init__.robot`
- There we need to define the `Suite Setup<2-space><Keyword>` and `Suite TearDown <2-space><keyword>` in the `***Settings***` Section of the Test Case to be executed before all the Test Suite that reside under Folder and Sub Folder
- Here only 3 Section Needed i.e `***Settings***`,`***Keywords***`,`***Variables***
- no `*** Test Cases` Required for this
- we can see all those info in `report.html` file

