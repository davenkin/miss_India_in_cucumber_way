Given /^I am on youtube homepage$/ do
  #sleep(60)
@youtube_page = YouTubePage.new @browser
@youtube_page.visit
end

When /^I search for "([^"]*)" on Youtube$/ do |key_word|
  @youtube_page.search_for key_word
end

Then /^I should see video results$/ do
  puts "Can you see the links?"
  #@youtube_page.put_video_text
end

When /^I click one video link randomly$/ do
  @youtube_page.watch_random_video
  #sleep(30)
end

Then /^I should be watching this video$/ do
  puts "Enjoy!"
end


