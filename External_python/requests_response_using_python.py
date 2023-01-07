from requests import get
import json

url = "https://reqres.in/api/users?page=2"

headers = {}

resp = get(url=url)
dict1 = json.loads(resp.content)
print(dict1)
