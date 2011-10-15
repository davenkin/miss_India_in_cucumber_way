Given /^I am on DemocracyNow! Mobile page$/ do
  @browser.goto "http://m.democracynow.org"
end

Then /^I should see the "([^"]*)" link which I had been working for more than two weeks$/ do |arg1|

   puts "OOPS! #{arg1} is not there!"
end
