*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***

When number is set to 7, and press Aseta, counter is 7.
    Go To  ${HOME_URL} 
    Input Text  id:number  7
    Click Button  Aseta
    Page Should Contain  nappia painettu 7 kertaa

