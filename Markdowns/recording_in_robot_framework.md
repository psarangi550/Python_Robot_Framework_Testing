### <ins> How to Capture Recordings in Robot Frameworks</ins>

- In Order to capture the recording we can use the chrome plugin `robotcorder`
- search it in the google to install the plugin if not found at first
- Here by using this we can record each step we perform on a web application
- It has the option as 
    - record
    - Scan
    - Save
    - Settings

- By using the record option we can capture all the action we are performing on the targeted webpage but for few of the variable we need to declare in the `*** Variables *** ` Section and also we need to use the Library required to perform those action

- To Capture All the Action that can be Performed we can select the Option as Scan through which we can caught all the required operation that we can perform
on the webpage but here also we need to declare the variables and Library in the `*** Variables ***` and ` *** Settings ***` section

- We can even save the recording Scan in that case  It will provide all the Library and Variables in the `***Variables***` and `***Settings***` section

- By default all the loicator used in the robotcorder is of xpath but we can also use the priority of the attribute in the setting of the robotcorder

-  Also we can use the Option as Sleep for each seconds when we go for , but the sleep parameter need to defined in the `*** Variables ***` section

- Also we can provide a condition that when we use the locator first it will check the element being contained on the page or not by using `wait until page contains element <locator-name>:<locator-value>`

