*** Settings ***
Library    Browser

*** Test Cases ***
Chargement de la page de garde Free.fr
    New Browser    chromium    headless=True
    New Page    https://free.fr
    Take Screenshot    fullPage=True