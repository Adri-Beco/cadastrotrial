require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "faker"


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://www.icasei.com.br"
  config.default_max_wait_time = 15
end