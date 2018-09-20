require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require './config/environment'

Before do
  @browser = Browser.new('Firefox')
end

After do
  @browser.close
end
