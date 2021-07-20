*** Settings ***

Library         SeleniumLibrary


*** Test Cases ***
Cenario: Login na aplicação
    # Abrir Navegador.
    Open Browser    http://automationpractice.com/index.php     chrome
    # Maximizar o Navegador
    Maximize Browser Window
    Set Selenium Timeout    60
    # Clicar no Elemento
    Click Element   xpath=//a[@class='login']
    Wait Until Element Is Visible   id=email_create
    Input Text  id=email_create    tohov63129423897@dedatre.com
    Click Element   xpath=//button[@class='btn btn-default button button-medium exclusive']
    Wait Until Element Is Visible   id=id_gender1
    Click Element    id=id_gender1
    # Inserir TEXTO Nome
    Wait Until Element Is Visible   id=customer_firstname
    Input Text  id=customer_firstname   Renan
    Click Element   id=customer_lastname
    # INSERIR TEXTO Sobrenome
    Input Text  id=customer_lastname    Illipronti
    Wait Until Element Is Visible   id=passwd
    Input Text  id=passwd   12345@6
    Select From List By Value    id:days    22
    Select From List By Value    id:months  1
    Select From List By Value    id:years   1990   
    Click Element   id=address1
    Input Text  id=address1     Rua Abcd, nº100
    Wait Until Element Is Visible   id=address1 
    Click Element   id=city
    Input Text  id=city     Sao Paulo
    Wait Until Element Is Visible   id=city
    Scroll Element Into View    id=phone_mobile
    #Click Element   id=uniform-id_state
    Select From List By Value    id:id_state    13
    Click Element   id=postcode
    Input Text  id=postcode     12453
    Select From List By Value    id:id_country    21
    Click Element   id=phone_mobile
    Input Text  id=phone_mobile     11-94587-1245
    Scroll Element Into View    id=submitAccount
    Click Element   id=alias
    Input Text  id=alias     Proximo ao Mercado
    Capture Page Screenshot
    Click Element   id=submitAccount
    # Tirar um PrintScreen da Tela
    #Capture Page Screenshot
   # Validar se Existe um Texto na Tela
    Page Should Contain    Renan  Illipronti
    # Tirar um PrintScreen da Tela
    Capture Page Screenshot
    # Fechar Navegador
    Close Browser
    