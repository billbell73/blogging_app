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