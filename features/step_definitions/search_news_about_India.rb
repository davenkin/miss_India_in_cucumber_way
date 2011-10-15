Given /^I am on google home page$/ do
   @browser.goto "www.google.co.in"
end

Given /^I switch to news search page$/ do
   if @browser.link(:text => "English").exist?
      @browser.link(:text => "English").click
   end
   @browser.link(:text => "News").click
end

When /^I search for "([^"]*)"$/ do |arg1|
  @browser.text_field(:name => "q").set "India"
  @browser.element_by_xpath("/html/body/div[3]/div/div/div/div/div/div/div[2]/span/form/div/span").click 
end

Then /^I should see at least (\d+) results$/ do |arg1|
   puts @browser.links.size
end

