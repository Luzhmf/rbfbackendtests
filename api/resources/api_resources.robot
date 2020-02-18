*** Settings ***
Documentation       
...     This library should ne used as the only place to define the keywords.\n\n
...     Keep the test file super clean, only with Settings and Test Cases

Library     Collections
LIbrary     RequestsLibrary
Library     JSONLibrary

*** Keywords ***
I'm an API consumer
    Create Session      github      http://api.github.com
    ${RESP}=    Get Request     github      /
    Should Be Equal As Strings       ${RESP.status_code}     200