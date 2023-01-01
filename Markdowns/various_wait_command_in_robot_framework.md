# <ins>WAIT COMMAND IN ROBOT FRAMEWORK</ins>

## WAIT RELATED TO THE PAGE &rarr;

### WAIT UNTIL PAGE CONTAINS :-
- `wait untill page contains<2-space><Text Should Appear On Page>` &rarr; This will wait until the Page Having the Text 
- The default timeout of that is 5- seconds if the Text Not Found if found then proceed before to that else wait max for 5 seconds
- 5 Seconds is the default timeout 
- we can change that using the `set selenium timeout <2-sapce><no>seconds`


### WAIT UNTIL PAGE CONTAINS ELEMENT :-
- `wait until page contains element<2-space><locator-name>:<locator-value>` &rarr; wait until the page contains a specific element  
- The default timeout of that is 5- seconds if the Text Not Found if found then proceed before to that else wait max for 5 seconds
- 5 Seconds is the default timeout 
- we can change that using the `set selenium timeout <2-sapce><no>seconds`

### WAIT UNTIL PAGE DOES NOT CONTAINS ELEMENT

- `wait until page does not contains element <2-space> <locator-name>:<locator value>` &rarr; will wait until the locator element does not contain in the page 
- The default timeout of that is 5- seconds if the Text Not Found if found then proceed before to that else wait max for 5 seconds
- 5 Seconds is the default timeout 
- we can change that using the `set selenium timeout <2-sapce><no>seconds`

## WAIT RELATED TO ELEMENTS &rarr;

### WAIT UNTIL ELEMENT CONTAINS

- `wait untill element contains <2-space><locator-name>:<locator-value> <2-space> < Inner Text value>` &rarr; will contain element inner text which is being provided
- The default timeout of that is 5- seconds if the Text Not Found if found then proceed before to that else wait max for 5 seconds
- 5 Seconds is the default timeout 
- we can change that using the `set selenium timeout <2-sapce><no>seconds`

### WAIT UNTIL ELEMENT DOES NOT CONTAINS 

- `wait untill element does not contains<2-space><locator-name>:<locator-value><2-space><Inner Text Value>` &rarr;will contain element inner text which is being provided
- The default timeout of that is 5- seconds if the Text Not Found if found then proceed before to that else wait max for 5 seconds
- 5 Seconds is the default timeout 
- we can change that using the `set selenium timeout <2-sapce><no>seconds`

### WAIT UNTIL ELEMENT IS VISIBLE 
- `wait untill element is visiable <2-space><locator-name>:<locator-value>` &rarr; will wait until the element provided in the locator being visible which is in hidden at first
- The default timeout of that is 5- seconds if the Text Not Found if found then proceed before to that else wait max for 5 seconds
- 5 Seconds is the default timeout 
- we can change that using the `set selenium timeout <2-sapce><no>seconds`

### WAIT UNTIL ELEMENT IS ENABLED
- `wait until page is enabled <2-space> <locator-name>:<locator-value>` &rarr; will wait until the page being enabled  which being diabled at first 
- The default timeout of that is 5- seconds if the Text Not Found if found then proceed before to that else wait max for 5 seconds
- 5 Seconds is the default timeout 
- we can change that using the `set selenium timeout <2-sapce><no>seconds`

