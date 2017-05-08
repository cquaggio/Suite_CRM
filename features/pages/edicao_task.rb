require 'pry'
class Edicao < SitePrism::Page

######## elementos
elements :chk_seleciona, "input[title='Select this row']"
elements :btneditar, "td a.edit-link"
element :status_cbx, "select#status"
element :descricao, :xpath,  "//*[@id='description']"
elements :btnsalvar, :button, 'SAVE'

  def aciona_edicao
     #clica no botao edicao
   click_on btneditar
  end

  def seleciona_item()
    chk_seleciona[0].set(true)
    sleep 3
  end

  def efetua_alteracao(descr, status)
     #Entra com o status
    status_cbx.select(status)
    descricao.set(descr)
    #clica no botao salvar
    btnsalvar[1].click()
  end

end