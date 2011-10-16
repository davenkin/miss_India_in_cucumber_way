
Given /^I want to do a spike$/ do
  #p self
end

Then /^I should see the spike results$/ do
  puts caller.join("\n")
end
