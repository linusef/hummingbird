def page_to(page_name)
  case page_name
  when "Home"
    visit '/'
  end
end

Then(/^I should see the text "(.*?)"$/) do |arg1|
  should have_text arg1
end

Then(/^I click on "(.*?)" link$/) do |arg1|
  click_on arg1
end

Then(/^I open Quick QA project$/) do
	within "#project_list" do
		click_on "Quick QA"
	end
end
