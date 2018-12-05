require 'capybara/cucumber'
require 'selenium-webdriver'  
require 'site_prism'
require_relative 'page_helper.rb'

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World (PageObjects)

Capybara.configure do |config| 
    #selenium #selenium_chrome  #selenium_chrome_healess
    config.default_driver = :selenium_chrome
    #config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5    
end