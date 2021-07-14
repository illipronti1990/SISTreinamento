*** Variables *** 
&{Dados_Pessoais}=   Nome=Renan Illipronti  idade=31 Anos    sexo=Masculino  Estado_Civil=Casado  Data_Nascimento=23/01/1990  Cidade=São_Paulo
@{Marcas_Celulares}=    Motorola   Samsung    Xiaomi  LG    Asus
&{Aluno_Renan}=      Prova1=7      Prova2=7      Prova3=6 
@{Media_Aluno}=      Prova1=7      Prova2=4      Prova3=8

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
       log to console  ${Marcas_Celulares[0]}
       log to console  ${Marcas_Celulares[1]}
       log to console  ${Marcas_Celulares[2]}
       log to console  ${Marcas_Celulares[3]}
       log to console  ${Marcas_Celulares[4]}


Imprime a Nota do Aluno

       log to console  ${Aluno_Renan.Prova1}
       log to console  ${Aluno_Renan.Prova2}
       log to console  ${Aluno_Renan.Prova3}


Imprime a Media da Nota do Aluno

       log to console  ${Media_Aluno.Prova1}



