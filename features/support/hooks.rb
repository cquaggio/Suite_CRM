



After do |scenario|

  time = Time.now.strftime('%Y_%m_%d_%Y_%H_%M_%S_')
  name_of_scenario = time + scenario.name.gsub(/\s+/, "_").gsub("/","_")
  puts "Name of snapshot is #{name_of_scenario}"
  file_path = 'C:\Projetos\Suite_CRM\Evidencias\teste'+time+'.png'
  page.driver.browser.save_screenshot file_path
  puts "Snapshot is taken"
  puts "#===========================================================#"
  puts "Scenario:: #{scenario.name}"
  puts "#===========================================================#"

end