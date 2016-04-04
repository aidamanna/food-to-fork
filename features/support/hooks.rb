require 'watir-webdriver'
require 'watir-webdriver/wait'

if ENV['LEVEL'] == 'front'
  Before do
    @browser = Watir::Browser.new :firefox
  end

  After do
    @browser.close
  end
end
