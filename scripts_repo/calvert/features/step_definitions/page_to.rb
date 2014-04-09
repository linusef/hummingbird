def page_to(page_name)
  case page_name
  when "home"
    visit '/'
  when "Registration"
  	visit '/users/sign_up'
  end
end

Given(/^I visit "(.*?)" page$/) do |page_name|
  page_to page_name
end