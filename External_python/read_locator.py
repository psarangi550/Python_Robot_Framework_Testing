from json import dumps, loads,load
from jsonpath import jsonpath


def get_jsonpath(attr: str) -> list:
    with open("../JSONFiles/elements.json", "r") as f:
        elements = load(f)
        return jsonpath(elements, attr)
