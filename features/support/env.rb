require 'rspec'
require 'watir-webdriver'
require 'watir-webdriver/wait'
require 'page-object'
require 'page-object/page_factory'
require 'rspec/expectations'
require 'rest-client'
require 'json'
require 'rubygems'
require 'yaml'
require 'json_spec/cucumber'
require 'dotenv'

Dotenv.load


include RSpec::Matchers
World(PageObject::PageFactory)
