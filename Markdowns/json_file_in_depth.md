# <ins> JSON File with Robot Framework

- while sending the `POST` and `PUT` Request we need to send the request Body in the JSON Format
- JSON is lightweight data exchange format
- on the last key-value pair no need of comma i.e. `;`

### <ins> JSON Path In Depth 

- JSONPath help in evaluate the value against the particular key being correct or not 
- By using the JSONPath we can navigate to the particular key in order to validate the value 
- By Using JSONPath er can validate the position of different element in the JSON Response

### <ins>HOW TO WRITE JSONPATH
- for that we can go to `jsonpath.com`
- JSONPath should begin with `$. for jsonpath.com` which is optional in real world we need to write that 
- The key and value does not have a parent we can put it directly as `$.<key>` or `<key>`
- if the orphan key have an array it will display the array as `$.<key>` which will provide all the array value

### <ins>For fetching the  JSON Path of a particular array element from its key as\

- for fetching the JSON Path of a particular Array element we have to use the key as below
  `$.<array key>[<index starts with 0>]`

### <ins>Fetching the JSONPath from the key of the object 

- By using the `.` operator we can navigate to t
- The particular location of the object in the JSON response
- when we access using the object inside the JSONPath then we can navigate using the `.` operator to its child elements
- if we have object inside the array then we need to first parse the array by using the index then we can move to the object once on the object we can use the `.` operator

### <ins>to use  JSONPAth alongside the python  for validating the JSON

- we need to import JSONPath Library as `import jsonpath`
- Then need to validate the JSONPath By Writing as `jsonpath.jsonpath(<json response>,"<jsonpath structure>")`
-the return vaLUE OF the `jsonpath.jsonpath(<json resp>,"<json path>") will provide the response in the list format \
- we can find the individual value by indexing
- 