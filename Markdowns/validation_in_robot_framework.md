# If Validation Successful then proceed Else Fail and Does  Not Allow to Proceed 


## <ins>Validation in Robot Framework With Respect to Page


- `page should contains <2-sapce><Text on the Page>` &rarr; This will check whether the element present on the page or not 
- if  present then continue else fail
- `page should not contains<2-space><Text On the Page>` &rarr; if the page does not contains the text then test pass else failed 


##  <ins>Validation in Robot Framework With Respect to Elements in Page

- `page should contains textfield <2-space> <locator-name>:<locator-value>` &rarr; will locate the &lt;input type='text'&gt; Field in the targeted webpage 
- `page should not contains textfield <2-space> <locator-name>:<locator-value` &rarr; will locate the &lt;input type='text'&gt; Field not in the targeted webpage
- `page should contains element` &rarr;
- `page should contains image` &rarr;
- `page should contains link` &rarr;
- `page should contains list` &rarr;
- `page should contains button <2-sapce><locator-name>:<locator-value>` &rarr;validation passed if able to locate the button
- `page should  not contains button <2-sapce><locator-name>:<locator-value>` &rarr;validation passed if not able to locate the button
- `page should contains radio button` &rarr;




- `page should contains checkbox<2-space><locator-name>:<locator-value>` &rarr; validate success if checkbox being present
- `checkbox should be  selected <2-space><locator-name>:<locator-value>` &rarr;validate success if the checkbox is selected
-  `checkbox should not be  selected <2-space><locator-name>:<locator-value>` &rarr; validated success if the checkbox is not selected



## <ins>Validation in Robot Framework With Respect to Elements

### Validation for the Element Text

- `Element Text Should Be <2-space><locator-name>:<locator-value><2-space><Exact Text> ` &rarr;validation successful if the exact text matches else fail
- `Element Text Should not Be <2-space><locator-name>:<locator-value><2-space><Exact Text> ` &rarr;validation successful if the exact text not matches else fail
- `Element Text Should contains <2-space><locator-name>:<locator-value><2-space><Partial Text>` &rarr;validation successful if the partial term exist in the locator provided else fail 
- `Element Text Should not contains <2-space><locator-name>:<locator-value><2-space><Partial Text> ` &rarr;validation successful if the partial term not exist in the locator provided else fail





- `Title should be<2-space><Tittle-value>` &rarr;validation successful if the title provided being matched
- `Element should be enabled <2-space><locator-name>:<locator-value>` &rarr; validation successful if the element is enabled provided in the locator else failed 
- `Element should be disabled <2-space><locator-name>:<locator-value>` &rarr; validation successful if the element is disabled provided in the locator else failed
- `Element should be visible<2-space><locator-name>` &rarr;validation successful if the element is visible provided in the locator else failed
- `Element should not be visible<2-space><locator-name>` &rarr;validation successful if the element is not visible provided in the locator else failed