# *** Settings ***
# Library    Browser

# *** Comments ***
# Hahahahah

# *** Test Cases ***
# Et oui
#     Log    ho ho ho!
#     New Browser    headless=False    browser=firefox    slowMo=1000    timeout=6
#     New Page    https://robotframework-browser.org/
#     # Take Screenshot    fullPage=True    quality=50

*** Settings ***
Library     Browser

*** Test Cases ***
Test Keyword Filtering
    New Browser    Firefox    headless=False
    New Page    https://robotframework-browser.org/
    Get Title    ==    Browser Library
    Take Screenshot    fullPage=True
    Click    a >> "keyword documentation"
    Switch Page    NEW
    Get Title    ==    Browser
    Get URL    ends    robotframework-browser/Browser.html
    Type Text    input[placeholder="Search"]    Style
    ${style_elements}=    Get Elements    id=keyword-shortcuts-container >> a > span:has-text("Style")
    FOR    ${element}    IN    @{style_elements}
        Get Style    ${element}    background-color    ==    rgb(255, 255, 0)
    END
    Length Should Be    ${style_elements}    2
    Take Screenshot    fullPage=False