#language: pt
Funcionalidade: Realizando um simples CRUD na classe de processo

  Cenario de Fundo: 
    Dado que o usuário está na página de processos

  Cenário: Simples POST
    E o usuário coloca no campo "vara" o valor "4"
    E o usuário coloca no campo "numero_processo" o valor "7823543"
    E o usuário coloca no campo "natureza" o valor "Guarda"
    E o usuário coloca no campo "partes" o valor "Alberto x Alberta"
    E o usuário coloca no campo "urgente" o valor "S"
    E o usuário coloca no campo "arbitramento" o valor "N"
    E o usuário coloca no campo "assistente_social" o valor "Dayane Moreira"
    E o usuário coloca no campo "data_entrada" o valor "2020-02-12"
    E o usuário coloca no campo "data_saida" o valor "2020-02-20"
    E o usuário coloca no campo "data_agendamento" o valor "2020-02-13"
    E o usuário coloca no campo "status" o valor "Aguardando"
    E o usuário coloca no campo "observacao" o valor "Nada a Declarar"
    Quando o usuário selecionar o botao salvar
    Então o usuário deve ver uma mensagem de "salvo com sucesso"
    E o usuário deve visualizar campo "vara"com o valor "4"

  Esquema do Cenário: Cenário: Simples GET com todos os campos
    E o usuário gostaria de visualizar o processo com o id <id>
    Quando o usuário selecionar o botao visualizar
    Então o usuário deve ver uma mensagem de "<mensagem>"

    Exemplos: 
      | id  | mensagem       |
      |   7 | sucesso        |
      | 666 | nao encontrado |

  Cenário: Cenário: Simples PUT com todos os campos
    E o usuário gostaria de visualizar o processo com o id 7
    E o usuário coloca no campo "vara" o valor "8"
    E o usuário coloca no campo "numero_processo" o valor "7823543"
    E o usuário coloca no campo "natureza" o valor "Guarda"
    E o usuário coloca no campo "partes" o valor "Alberto x Alberta"
    E o usuário coloca no campo "urgente" o valor "S"
    E o usuário coloca no campo "arbitramento" o valor "N"
    E o usuário coloca no campo "assistente_social" o valor "Dayane Moreira"
    E o usuário coloca no campo "data_entrada" o valor "2020-02-12"
    E o usuário coloca no campo "data_saida" o valor "2020-02-20"
    E o usuário coloca no campo "data_agendamento" o valor "2020-02-13"
    E o usuário coloca no campo "status" o valor "Aguardando"
    E o usuário coloca no campo "observacao" o valor "Nada a Declarar"
    Quando o usuário selecionar o botao atualizar
    Então o usuário deve ver uma mensagem de "sucesso"
    E o usuário deve visualizar campo "vara"com o valor "8"

  Cenário: Cenário: Simples DELETE
    E o usuário coloca no campo "vara" o valor "4"
    E o usuário coloca no campo "numero_processo" o valor "7823543"
    E o usuário coloca no campo "natureza" o valor "Guarda"
    E o usuário coloca no campo "partes" o valor "Alberto x Alberta"
    E o usuário coloca no campo "urgente" o valor "S"
    E o usuário coloca no campo "arbitramento" o valor "N"
    E o usuário coloca no campo "assistente_social" o valor "Dayane Moreira"
    E o usuário coloca no campo "data_entrada" o valor "2020-02-12"
    E o usuário coloca no campo "data_saida" o valor "2020-02-20"
    E o usuário coloca no campo "data_agendamento" o valor "2020-02-13"
    E o usuário coloca no campo "status" o valor "Aguardando"
    E o usuário coloca no campo "observacao" o valor "Nada a Declarar"
    E o usuário selecionar o botao salvar
    Quando o usuário selecionar o botao apagar
    Então o usuário deve ver uma mensagem de "sem conteudo"
