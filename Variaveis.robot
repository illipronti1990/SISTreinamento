*** Variables *** 
&{Dados_Pessoais}=  Nome=Renan Illipronti  idade=31 Anos    sexo=Masculino  Estado_Civil=Casado  Data_Nascimento=23/01/1990  Cidade=São_Paulo
@{Marcas_Celulares}=    Motorola   Samsung    Xiaomi  LG    Asus

*** Test Case ***
Imprimindo Váriavel do tipo Dicionario
       log to console  ${Dados_Pessoais}
       log to console  ${Dados_Pessoais.Nome}
       log to console  ${Dados_Pessoais.idade}
       log to console  ${Dados_Pessoais.sexo}
       log to console  ${Dados_Pessoais.Estado_Civil}
       log to console  ${Dados_Pessoais.Data_Nascimento}
       log to console  ${Dados_Pessoais.Cidade}

    
Imprimindo Marcas de Celulares

    log to console  ${Marcas_Celulares}
    log to console  ${Marcas_Celulares} Motorola

    


