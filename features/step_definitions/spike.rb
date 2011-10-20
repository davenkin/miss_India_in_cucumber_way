
Given /^I want to do a spike$/ do
  #p self
end

Then /^I should see the spike results$/ do
  puts caller.join("\n")
end
#youtube
#browser.text_field(:name => "search_query").set 'twu23'
#browser.button(:id => "search_btn").click
#links = Array.new
#links = browser.links.collect {|link| links.push link.href}
#3.times {
#links.each {|item| links.delete item unless item.include? 'http://www.youtube.com/watch?'}
#}