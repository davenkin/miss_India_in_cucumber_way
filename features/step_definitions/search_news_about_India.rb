Given /^I am on Google "([^"]*)" page$/ do |category|
  @google_page = GooglePage.new @browser
  @google_page.visit
  @google_page.goto_english_page
  @google_page.visit_category_page category
end

When /^I search for '([^"]*)'$/ do |key_word|
   @google_page.search_for key_word
end

Then /^I should see the recent news about '([^"]*)'$/ do |key_word|

end


