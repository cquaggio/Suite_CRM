
#language: pt
#uft-8

Funcionalidade: Manutenção do site
  O usuário do site SuiteCRM deseja efetuar manutenção de Tasks

  Contexto: O usuário esteja logado no site e acesse a opção de Tasks no Menu
   	Dado Que o usuário esteja logado e na tela de Tasks	

  @cadastro
	#Cenario: O usuário deseja efetuar um Cadastro de task
	#	Quando o usuário seleciona a funcionalidade Create Task
	#	Entao apresentar a tela para entrada das informações cadastrais e efetuar o cadastro

  Esquema do Cenario: O usuário deseja efetuar um Cadastro de task
  E o usuário seleciona a funcionalidade Create Task
  E o usuário informa campos "<nome>", "<status>", "<dt_inicio>", "<prioridade>", "<descricao>"
  E o usuário salva as informações
  Entao visualiza o "<resultado>" do cadastramento atraves da mensagem de retorno "<msg_retorno>"

  Exemplos:
  | nome                        | status      | dt_inicio  | prioridade | descricao  | resultado | msg_retorno                    |
  | Fechamento do projeto Cesar | In Progress | 06/05/2017 | Medium     | xxxxxxxxxx | sucesso   | Fechamento do projeto Cesar    |
  |                             | In Progress | 06/05/2017 | Medium     | xxxxxxxxxx | pendente  | Missing required field: Subject|

  @edicao
  Cenario: O usuário deseja efetuar a Edição de uma task
    Quando o usuário filtra para selecionar um item pertencente a ele
    E seleciona a opção para Edição
    Entao apresentar a tela para a edição das informações e efetuar a edição

  @exclusao
  Cenario: O usuário deseja efetuar a Exclusão de uma task
    Quando o usuário filtra para selecionar um item pertencente a ele
    E marca a Tarefa que deseja excluir no checkbox
    Entao seleciona a opção Delete no menu de Bulk Action e efetua a exclusão