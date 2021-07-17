*** Test Cases ***
Validar Idade
    Verifica Maior Idade    25

Verificar Par ou Impar
	 @{Numeros}	create list		1	2	3	4	5	6	5	8	9	10
	 Verificar Par ou Impar  @{Numeros}



*** Keywords ***
Verifica Maior Idade
    [Arguments]    ${Idade}
	IF  '${Idade}' >= "18"
		Log To Console    Maior de Idade 
    ELSE
        log to console  Menor de Idade
	END

Verificar Par ou Impar
	[Arguments]		@{Numeros}
	FOR  ${Numero_Atual}	IN	@{Numeros}
        ${Resultado}=     evaluate      ${Numero_Atual}%2
		IF	'${Resultado}' == "0"
			log to console  ...
            log to console	${Numero_Atual} é Par
        ELSE 
            log to console   ...
            log to console  ${Numero_Atual} é Impar
		END
	END