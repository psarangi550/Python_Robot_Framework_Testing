*** Settings ***

Library     String
Library     ../External_python/read_locator.py
Library     SeleniumLibrary
Library    String


*** Variables ***


*** Keywords ***


*** Test Cases ***
TC01 SAY HELLO
    Log To Console    Hello

*** Comments ***
