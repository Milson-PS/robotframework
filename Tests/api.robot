*** Settings ***
Library    RequestsLibrary

*** Variables ***
${base_url}    https://www.citilink.ru/

*** Test Cases ***
GetHomePage
    ${response}    Get Request    ${base_url}
    Should Be Equal As Strings    ${response.status_code}    200
    Should Contain    ${response.text}    Ожидаемое содержимое здесь