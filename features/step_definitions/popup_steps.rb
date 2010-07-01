When /^I click the close link inside the popup$/ do
  click_link_with_selector ".popup .close"
end

Then /^I should see the "([^\"]+)" popup$/ do |selector|
  response.should be_visible(selector)
end

Then /^I should no longer see the "([^\"]+)" popup$/ do |selector|
  response.should not_be_visible(selector)
end

Then /^I should be presented with the alert "([^\"]+)"$/ do |text|
  response.should have_alert(text)
end

