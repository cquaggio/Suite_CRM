require 'pry'
class AcessaMenus < SitePrism::Page

######## elementos
element :menu_activities,  :xpath, "//*[@id='grouptab_3']"
element :menu_tasks, :xpath,  "//*[@id='moduleTab_6_Tasks']"

  def acessa_menu_activities_tasks()
    #Acessa o menu ""activieis > tasks"
    menu_activities.click
  	menu_tasks.click
  end

end

