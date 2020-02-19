*** Settings ***
Library     Collections
LIbrary     RequestsLibrary
Library     JSONLibrary

*** Keywords ***
I'm an API consumer
    Create Session      github      http://api.github.com
    ${RESP}=    Get Request     github      /
    Should Be Equal As Strings       ${RESP.status_code}     200