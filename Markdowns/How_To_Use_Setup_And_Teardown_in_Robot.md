# <ins> How to execute the Setup and TearDown in  robot framework 

### For Setup:-

- we can mention the setup in the Test Cases and Keyword Resources we can define that as
  `[Setup]<2-space><keywords>` on the TestCases or User Defined Keyword in the Resources Section

- when we define `[setup]<2-space><keywords>` on the Test Case Level then that will be executed for every TestCases or Wherever the User Defined Keyword being used

- we can also define the Setup on the robot file Level which will also be executed for each Testcase in the TestSuite
  for that we have to use as `Test Setup<2-space><keyword>`
  (used when the setup and teardown being same for all the TestCases)
### For TearDown:-

- we can mention the tearDown in the Test Cases and Keyword Resources we can define that as
  `[TearDown]<2-space><keywords>` on the TestCases or User Defined Keyword in the Resources Section

- when we define `[TearDown]<2-space><keywords>` on the Test Case Level then that will be executed for every TestCases or Wherever the User Defined Keyword being used

- we can also define the TearDown on the robot file Level which will also be executed for each Testcase in the TestSuite
  for that we have to use as `Test TearDown<2-space><keyword>`
  (used when the setup and teardown being same for all the TestCases)



### Where can we see the execution flow 
- we can see the actual execution flow in `log.html` file
- 