*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***

When button pressed twice and resetted, zero should be the counter value
    Go To  ${HOME_URL} 
    Click Button  Paina
    Click Button  Paina
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa

