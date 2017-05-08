require 'pry'
class Login < SitePrism::Page

set_url "https://demo.suiteondemand.com"

######## elementos
element :usuario, :xpath, "//*[@id='user_name']"
element :senha, :xpath, "//*[@id='user_password']"
element :btnlogin, :xpath, "//*[@id='bigbutton']"

  def efetua_login(usu, sen)
    #Entra com o usuário
  	usuario.set(usu)
    #Entra com a senha
    senha.set(sen)
    #clica para efetuar o login
    btnlogin.click
  end

end
