require 'pry'
class Inclusao < SitePrism::Page

######## elementos
element :subject, :xpath, "//*[@id='name']"
element :status_cbx, "select#status"
element :start_date, :xpath, "//*[@id='date_start_date']"
element :priority_cbx, :xpath, "//*[@id='priority']"
element :description, :xpath, "//*[@id='description']"
elements :btnsalvar, :button, 'SAVE'

#Mensagem de necessidade do "subject"
element :err_subject_txt, :xpath, "//*[@id='detailpanel_-1']/div/div/div[1]/div[2]/div"
element :success_subject_txt,  "h2.module-title-text"

  def efetua_inclusao(nome, status1, dt_inicio, prioridade, descricao)
    #Entra com o assunto
  	subject.set(nome)
    #Entra com o status
    status_cbx.select(status1)
    #Entra com data inicial
    start_date.set(dt_inicio)
    #entra com a prioridade
    priority_cbx.select(prioridade)
    #entra com a descricao
    description.set(descricao)

  end 

  def salva()
    btnsalvar[1].click()
  end 

end
