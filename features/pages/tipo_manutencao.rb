require 'pry'
class TipoManutencao < SitePrism::Page

######## elementos
element :inclusao,  :xpath, "//*[@id='actionMenuSidebar']/ul/li[1]/a/div[1]"

  def ativa_inclusao()
    #clica no botao de inclusao de tasks
    inclusao.click
   
  end

end