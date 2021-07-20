*** Settings ***

Library         SeleniumLibrary


*** Test Cases ***
Cenario: Login na aplicação
    # Abrir Navegador.
    Open Browser    http://automationpractice.com/index.php     chrome
    # Maximizar o Navegador
    Maximize Browser Window
    # Clicar no Elemento
    Click Element   xpath=//a[@class='login']
        # Inserir TEXTO EMAIL
    Input Text  id=email    rasafa9934@ovooovo.com
    # INSERIR TEXTO SENHA
    Input Text  id=passwd   Teste@123
     # Tirar um PrintScreen da Tela
    Capture Page Screenshot
    # selecionar o botão de Login
    Click Element   id=SubmitLogin
    # Validar se Existe um Texto na Tela
    Page Should Contain     Marcos  Barbos 
    # Tirar um PrintScreen da Tela
    Capture Page Screenshot
    # Fechar Navegador
    Close Browser
    