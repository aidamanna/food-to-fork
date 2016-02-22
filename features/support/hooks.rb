require 'watir-webdriver'
require 'watir-webdriver/wait'

Before do
  @browser = Watir::Browser.new :firefox
end


After do
  @browser.close
end