Given(/^there is a post with content "(.*?)"$/) do |post_content|
  Post.create(title: 'weather stuff', body: post_content)
end

Given(/^I am on the homepage$/) do
  visit '/posts'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with=> value)
end

Given(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

Then(/^I should not see "(.*?)"$/) do |post_content|
  expect(page).not_to have_content(post_content)
end

Given(/^the post is being displayed$/) do
	expect(page.all('.post').count).to eq 1
end

Then(/^the post will be deleted$/) do
  expect(page.all('.post').count).to eq 0
end

Then(/^the post with content "(.*?)" should have (\d+) votes?$/) do |post_content, num|
  expect(page).to have_css '.vote-count', text: num.to_s
end


