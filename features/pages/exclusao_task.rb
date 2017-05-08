require 'pry'
class Exclusao < SitePrism::Page

######## elementos
elements :chk_seleciona, "input[title='Select this row']"
elements :btneditar, "td a.edit-link"
element :menu_acao, 'li#tab-actions'
element :menu_delete, 'input#delete_button'
element :btnfechar_tarefa, :xpath, "//*[@id='24fb8ec4-c15e-7fab-b130-58f65cbf6c2c']/img"
elements :btnsalvar, :button, 'SAVE'

  def seleciona_item()
    chk_seleciona[0].set(true)
    sleep 5
  end

  def fechar_tarefa()
    btnfechar_tarefa.click
  end

  def habilita_exclusao()
    #clica no botao salvar
    btnsalvar[1].click()
  end

  def aciona_edicao
     #clica no botao edicao
   click_on btneditar
  end

  def salvar()
    #clica no botao salvar
    btnsalvar[1].click()
  end

  def aciona_exclusao()
    menu_acao.click()
    menu_delete.click()
    sleep 3
  end

  def confirma_exclusao()
    page.driver.browser.switch_to.alert.accept
  end

end
