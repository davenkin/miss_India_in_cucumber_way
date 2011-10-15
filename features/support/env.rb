require 'rubygems'
require 'watir-webdriver'
require 'rspec'

Before do
  @browser = Watir::Browser.new :firefox
end
