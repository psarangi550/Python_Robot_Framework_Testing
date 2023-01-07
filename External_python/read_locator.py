from json import dumps, loads,load
from jsonpath import jsonpath
from os import path


def get_jsonpath(attr: str) -> list:
    with open("C:\\Users\\psara\\Downloads\\Python_Robot_Framework_Testing\\JSONFiles\\elements.json", "r") as f:
        elements = load(f)
        return jsonpath(elements, attr)


# if __name__ =="__main__":
#     print(get_jsonpath("Registration.username_text"))