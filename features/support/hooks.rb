After do |scenario|
    temp_shot = page.save_screenshot("log/temp_shot.png")
    shot = Base64.encode64(File.open(temp_shot,"rb").read)
    attach(temp_shot, "image/png" "Evidencia")
end


# require_relative 'helper.rb'
   
# After do |scenario|
#     @helper = Helper.new
#     @nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
#     @helper.take_screenshot(@nome, 'screenshots/test_failed') if   scenario.failed?
#     unless @helper.take_screenshot(@nome, 'screenshots/test_passed')
#    end
# end

#acima metodo copiado do medium (pedro henrique)

