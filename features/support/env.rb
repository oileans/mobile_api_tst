# frozen_string_literal: true

require 'cucumber'
require 'selenium-webdriver'
require 'appium_lib'



$wait = Selenium::WebDriver::Wait.new(timeout: 60)



def load_appium_cfg(platform)
  dir = "#{Dir.pwd}/config/#{platform}/appium.txt"
  Appium.load_appium_txt file: File.expand_path(dir, __FILE__), verbose: true
end

env = ENV['PLATFORM_NAME'].downcase

case env
when 'android'
  caps = load_appium_configuration(env)
  caps[:appium_lib][:export_session] = true
when 'ios'
  caps = load_appium_configuration(env)
  caps[:appium_lib][:export_session] = true
else
  raise("Plataforma inexistente #{ENV['PLATFORM_NAME']}")
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
