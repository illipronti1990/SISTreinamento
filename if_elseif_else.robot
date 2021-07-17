*** Test Cases ***
Imprimir Numeros 
	 @{Numeros}	create list		1	2	3	4	5	6	7	8	9	10
	 Verificar numeros  @{Numeros}



*** Keywords ***
Verificar numeros
	[Arguments]		@{Numeros}
	FOR  ${Numero_Atual}	IN	@{Numeros}     
		IF	'${Numero_Atual}' == "5"
			log to console  ...
            log to console	Estou no numero ${Numero_Atual} 
        ELSE IF  '${Numero_Atual}' == "8"
            log to console   ...
            log to console   Estou no numero ${Numero_Atual}
        ELSE
            log to console  Os numeros 5 e 8 nao foram encontrados
		END
	END