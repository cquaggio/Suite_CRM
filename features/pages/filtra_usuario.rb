require 'pry'
class FiltraUsuario < SitePrism::Page

######## elementos
element :filtra_btn,  "#pagination > td > table > tbody > tr > td:nth-child(1) > ul.clickMenu.selectmenu.searchLink.SugarActionMenu.listViewLinkButton.listViewLinkButton_top > li"
element :filtra_subject, :xpath, "//*[@id='name_basic']"
element :filtra_my_itens, :xpath, "//*[@id='current_user_only_basic']"
element :filtra_open_itens, :xpath, "//*[@id='open_only_basic']"
element :filtra_my_favorite, :xpath, "//*[@id='favorites_only_basic']"
element :search_btn, :xpath, "//*[@id='search_form_submit']"


  def aciona_filtro()
    sleep 4
    filtra_btn.click()
    sleep 4
  end

  def informa_subject(desc)
    sleep 3
    filtra_subject.set(desc)
    sleep 3
  end

  def filtraPorMeusItens()
    #entra com a prioridade
    filtra_my_itens.set(true)
    #clica no botao salvar
    search_btn.click()
  end

  def filtraPorOpenItens()
    #entra com a prioridade
    filtra_open_itens.set(true)
    #clica no botao salvar
    search_btn.click()
  end

  def filtraMyFavorites()
    #entra com a prioridade
    filtra_my_favorite.set(true)
    #clica no botao salvar
    search_btn.click()
  end

end
