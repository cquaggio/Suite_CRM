require 'pry'

Dado(/^Que o usuário esteja logado e na tela de Tasks$/) do
   @page = Login.new
   @page.load
   @page.efetua_login("will", "will")
   @menu = AcessaMenus.new
   @menu.acessa_menu_activities_tasks

end

Quando(/^o usuário seleciona a funcionalidade Create Task$/) do

  #clica no botão que ativa a inclusão de uma tarefa
  @tipomanutecao = TipoManutencao.new
  @tipomanutecao.ativa_inclusao

end

#---------------- I N C L U S A O ---------------------------------------------
#-------------------------------------------------------------------------------
Dado(/^o usuário informa campos "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)"$/) do |nome, status, dt_inicio, prioridade, descricao|
  @inclusao = Inclusao.new
  @inclusao.efetua_inclusao(nome, status, dt_inicio, prioridade, descricao)
end

Dado(/^o usuário salva as informações$/) do
   @inclusao = Inclusao.new
   @inclusao.salva
end

Entao(/^visualiza o "([^"]*)" do cadastramento atraves da mensagem de retorno "([^"]*)"$/) do |resultado, tipo_msg|
  expect(Inclusao.new.success_subject_txt.text).to eq(resultado) if tipo_msg == 'sucesso'
  expect(Inclusao.new.err_subject_txt.text).to eq(resultado) if tipo_msg == 'pendente'
  sleep 10
end  

# ------- A L T E R A Ç A O    E    E X C L U S Ã O  --------------------------
#------------------------------------------------------------------------------
Quando(/^o usuário filtra para selecionar um item pertencente a ele$/) do
  @filtro = FiltraUsuario.new
  @filtro.aciona_filtro
  sleep 3
  #binding.pry
  @filtro.informa_subject("Fechamento do projeto Cesar")
  sleep 3
  @filtro.filtraPorMeusItens
  
end

Quando(/^seleciona a opção para Edição$/) do
  @edicao = Edicao.new
  @edicao.seleciona_item
  @edicao.btneditar[0].click

end

Entao(/^apresentar a tela para a edição das informações e efetuar a edição$/) do
  @edicao = Edicao.new
  @edicao.efetua_alteracao("Alteracao da descricao", "Completed")
end

#EXCLUSAO ---------------------------------------------------
Quando(/^marca a Tarefa que deseja excluir no checkbox$/) do
  @exclusao = Exclusao.new
  @exclusao.seleciona_item
end

Entao(/^seleciona a opção Delete no menu de Bulk Action e efetua a exclusão$/) do
  @exclusao = Exclusao.new
  @exclusao.seleciona_item
  @exclusao.btneditar[0].click
  #Salva a edição para habilitar o botão de "Deleção"
  @exclusao.salvar
  @exclusao.aciona_exclusao
  @exclusao.confirma_exclusao
end