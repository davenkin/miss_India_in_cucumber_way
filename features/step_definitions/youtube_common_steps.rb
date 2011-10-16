Given /^I am on "([^"]*)" homepage$/ do |arg1|
@youtube_page = YouTubePage.new @browser
@youtube_page.visit
end

When /^I search for "([^"]*)"$/ do |key_word|
  @youtube_page.search_for key_word
end

Then /^I should see video results$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I click one video link$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be watching this video$/ do
  pending # express the regexp above with the code you wish you had
end


