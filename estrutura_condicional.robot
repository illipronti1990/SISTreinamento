*** Test Cases ***
Validar Idade
    Verifica Maior Idade    18

Verificar Numeros e encontrar Numero 5
	@{Numeros}	create list		1	2	3	4	5	6	5	8	9	10
	Verificar Numero 5  @{Numeros}

*** Keywords ***
Verifica Maior Idade
    [Arguments]    ${Idade}
	IF  '${Idade}' >= "18"
		Log To Console    Maior de Idade 
	END

Verificar Numero 5
	[Arguments]		@{Numeros}
	FOR  ${Numero_Atual}	IN	@{Numeros}
		IF	'${Numero_Atual}' == "5"
			log to console	Sucesso
		END
	END
	

