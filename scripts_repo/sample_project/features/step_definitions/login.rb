When(/^I login with "(.*?)" and "(.*?)"$/) do |username, password|
  login(username, password)
end

# You can reuse step defitions
Given(/I am logged in as "(.*?)"$/) do |user|
  lgoin(user.username, user.password)
end

Given(/^user should be able to login$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I visit "(.*?)" page$/) do |arg1|
end