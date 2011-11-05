When /^I search for the hometown '([^"]*)' for '([^"]*)'$/ do |address, twu23er|
    @google_page.search_address address
    puts "searching hometown for #{twu23er}"
end
Then /^I should be located to the hometown of '([^"]*)'$/ do |twu23er|
  puts "Haha, I can see the hometown of #{twu23er}"
end