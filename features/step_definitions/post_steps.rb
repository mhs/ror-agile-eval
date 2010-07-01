Given /^the following posts:$/ do |table|
  posts = table.hashes.map { |hsh| Factory(:post, hsh) }
  set_current_posts posts
end

When /^I follow "([^\"]+)" for the post titled "([^\"]+)"$/ do |link_text, title|
  post = Post.find_by_title!(title)
  click_link_within "##{dom_id(post)}", link_text
end

When /^I follow "([^\"]*)" for the post titled "([^\"]*)", but answer "(Yes|No)" to the prompt "([^\"]*)"$/ do |link_text, title, answer, confirm_message|
  if answer == "Yes"
    choose_ok_on_next_confirmation
  else
    choose_cancel_on_next_confirmation
  end
  post = Post.find_by_title! title
  click_link_within "##{dom_id(post)}", link_text
  response.should have_confirmation(confirm_message)
end

Then /^I should see the following post displayed:$/ do |table|
  table.rows_hash.each do |field, value|
    response.should have_selector(".post .#{field}", :content => value)
  end
end

Then /^I should see those posts listed$/ do
  current_posts.each do |post|
    see_post_listed post
  end
end

Then /^I should see that the "([^\"]+)" title is available$/ do |title|
  response.should have_selector("#title_availability", :content => title)
end

Then /^I should see the post titled "([^\"]+)" listed$/ do |title|
  see_post_listed Post.find_by_title!(title)
end

Then /^I should not see the post titled "([^\"]+)" listed$/ do |title|
  do_not_see_post_with_title_listed title
end

