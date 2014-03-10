Given(/^I click "(.*?)" link$/) do |arg1|
  click_on arg1
end

Then(/^I should see the text "(.*?)"$/) do |arg1|
  should have_text arg1
end

Given(/^I visit "(.*?)" page$/) do |page|
 case page
 when "Home"
   visit '/'
 when "Register"
   visit '/users/sign_up'
 when "Login"
   visit '/users/sign_in'
 when "Topics & Questions"
   visit '/questions'
 when "Topics"
   visit '/questions/browse'
 when "Reader Queries"
   visit '/reader_questions'
 when "Submit New Query"
   visit '/reader_questions/new'
 when "Countries"
   visit '/countries'
 end
end

Given(/^I check the accessibility of "(.*?)" page$/) do |page|
  case page
  when "Home"
    puts visit '/'
  when "Register"
    visit '/users/sign_up'
  when "Login"
    visit '/users/sign_in'
  end
end

Then(/^I click on the tile "(.*?)"$/) do |arg1|
  within('div#main-nav') do
    click_on "Data Explorer"
  end
end

Then(/^I click throuth all the sections of the carousel$/) do
  within('section.top div.toggle') do
    all('span').each do |l|
      puts l.text
      l.click
    end
  end
end

Then(/^I click throuth all the featured countries on the home page$/) do
  within('section#countries') do
    countries = all('div.figure-box h5 a')
    links = []
    countries.each do |c|
      links << c["href"]
    end
    puts links
  end
end

# home 04
Then(/^I search the term "(.*?)" on home page$/) do |arg1|
  fill_in 'q', :with => arg1
  click_on 'Search'
end

# home 05
Then(/^I should be taken to the register page$/) do
  should have_title 'Data Explorer - Pew-Templeton Global Religious Futures Project'
  should have_text 'Create New Account'
end

# home 06
Then(/^I should be taken to login screen$/) do
  should have_title "Data Explorer - Pew-Templeton Global Religious Futures Project"
  should have_text "With your Pew Research account:"
end

#signup 01
Given(/^I fill in all the fields for registration$/) do
  ts = Time.now.to_i.to_s
  fill_in 'user_name', :with => ts
  fill_in 'user_email', :with => "#{ts}@gmail.com"
  fill_in 'user_password', :with => "123456"
  fill_in 'user_password_confirmation', :with => "123456"
  fill_in 'user_title', :with => ts
  fill_in 'user_organization', :with => ts
  fill_in 'user_street', :with => ts
  fill_in 'user_city', :with => ts
  fill_in 'user_state', :with => 'CA'
  fill_in 'user_zipcode', :with => '94304'
  fill_in 'user_country', :with => 'USA'
  fill_in 'user_phone', :with => '1234567890'
  fill_in 'user_using_purpose', :with => 'Movie Music Travel'
  click_button 'Register'
end

Then(/^I should see the successful registration message$/) do
  should have_text "Welcome! You have signed up successfully."
end

#signup 02

Given(/^I fill in only the required fields for registration$/) do
  ts = Time.now.to_i.to_s
  fill_in 'user_name', :with => ts
  fill_in 'user_email', :with => "#{ts}@gmail.com"
  fill_in 'user_password', :with => "123456"
  fill_in 'user_password_confirmation', :with => "123456"
  click_button 'Register'
end

#signup 03

Given(/^I fill in part of the required fields for registration$/) do
  ts = Time.now.to_i.to_s
  fields = ['user_name','user_email','user_password','user_password_confirmation']
  fields = fields - [fields[rand(4)]]
  fields.each do |f|
    case f
    when 'user_name'
      fill_in 'user_name', :with => ts
    when 'user_email'
      fill_in 'user_email', :with => "#{ts}@gmail.com"
    when 'user_password'
      fill_in 'user_password', :with => "123456"
    when 'user_password_confirmation'
      fill_in 'user_password_confirmation', :with => "123456"
    end
  end
  click_button 'Register'
end

Given(/^I should not be able to register$/) do
  should have_text "This field is required."
end

# signin 01
Given(/^I login with the correct email address and password$/) do
  fill_in 'user_email', :with => 'pete@intridea.com'
  fill_in 'user_password', :with => '123456'
  click_button 'Login'
end

Then(/^I should be able to login$/) do
  should have_text "Signed in successfully."
end

# signin 02
Given(/^I login with the correct email address and incorrect password$/) do
  fill_in 'user_email', :with => 'pete@intridea.com'
  fill_in 'user_password', :with => '123456-wrong'
  click_button 'Login'
end

Then(/^I should not be able to login$/) do
  should have_text "The password you have entered is incorrect. Please try again"
end

#signin 03
Given(/^I login with a non\-registered email address$/) do
  ts = Time.now.to_i.to_s
  fill_in 'user_email', :with => "pete#{ts}@intridea.com"
  fill_in 'user_password', :with => '123456'
  click_button 'Login'
end

Then(/^I should be told that the email address does not exist and I should register$/) do
  should have_text "That email address is not registered with us. Please try again or register for a new account."
end

#signin 04
Given(/^I login with a facebook account$/) do
  click_on "Log In with Facebook"
  fill_in 'email', :with => 'linus+99@intridea.com'
  fill_in 'pass', :with => 'intridea4me'
  click_on "Log In"
  click_on "Okay"
end

Given(/^I login with a google account$/) do
  click_on "Sign In with Google"
  fill_in 'Email', :with => 'intrideaqa@gmail.com'
  fill_in 'Passwd', :with => 'intridea4me'
  click_on "Sign in"
  click_on "Accept"
end

Then(/^I should be able to login with FB account successfully$/) do
  should have_text "You've successfully signed in!"
end

Then(/^I should be able to login with Google account successfully$/) do
  should have_text "You've successfully signed in!"
end

# questions 01
Then(/^I click through the featured religions on home page$/) do
  fr = ["Buddhists","Christians","Folk Religionists", "Hindus", "Jews", "Muslims","Unaffiliated"]
  invisible_fr = ["Other Religions"] 
  fr.each do |l|
      should have_link l
      puts find_link(l)["href"]
  end
  should have_link("Other Religions",:visible=>false)
end

# questions 02
Then(/^I submit my own question$/) do
  fill_in 'reader_question_wording', :with => "This is a test"
  fill_in 'reader_question_email', :with => "intrideaqa@gmail.com"
  click_on 'Submit'
end

# questions 03
Given(/^I click through people are asking questions$/) do
  questions = all('.reader .list a')
  links = []
  questions.each do |q|
    links << q["href"]
  end
  puts links
end
# questions 04
Given(/^I click through any topic or subtopic$/) do
  topics = all('.topic a')
  links = []
  topics.each do |t|
    links << t["href"]
  end
  puts links
end

# questions 05
Given(/^I search for a term like "(.*?)"$/) do |arg1|
  fill_in 'q', :with => arg1
  click_on 'Find'
end

# questions 06
Then(/^I select different subtopics$/) do
  topics = all('select#topic option')
  options = []
  topics.each do |t|
    options << t.text
  end
  puts options
end

Then(/^I change the selected topic$/) do
  subtopics = all('ul.list a')
  options = []
  subtopics.each do |t|
    options << t.text
  end
  puts options
end

# questions 07
Then(/^I should be able to click through the admin selected reader questions$/) do
  questions = all('#main .questions a')
  q_links = []
  q_texts = []
  questions.each do |q|
    q_links << q["href"]
    q_texts << q.text
  end
  puts q_links
  puts q_texts
end

# questions 08
Then(/^I click on any of the questions$/) do
  questions = all('ul.questions li.spark a')
  q_links = []
  q_texts = []
  questions.each do |q|
    q_links << q["href"]
    q_texts << q.text
  end
  puts q_links
  puts q_texts
  q = questions[rand(questions.length)]
  puts "Question clicked: " + q.text
  puts q["href"]
  q.click
end

Then(/^I will be taken to question page$/) do
  #should have_text "Create Your Own Visualization"
  should have_text"Explore the Data"
  should_not have_text "The server encountered an error while processing your request. We'll work to resolve the issue."
end

#questions 09
Then (/^I click on a subtopic filter$/) do
  subtopics = all('ul.list a')
  options = []
  subtopics.each do |t|
    options << t.text
  end
  subtopics[rand(subtopics.length)].click
  sleep 3
end

Then(/^I reset filters$/) do
  click_on 'Reset Filters'
end

#questions 10
Then(/^I search the term a term like "(.*?)" on Topic page$/) do |arg1|
  fill_in 'q', :with => arg1
  click_on 'Search'
  sleep 5
  within('div.question-list') do
    all('a').each do |q|
      puts q.text
    end
  end
end

#reader 01
And(/^I review the questions submitted by other users and approved by the admin$/) do
  puts "Featured Reader Questions:"
  within('div.question-list.reader') do
    all('a').each do |q|
      puts q.text
    end
  end
end

#reader 02
Given(/^I narrow down the reader questions by topic$/) do
  options = []
  all('select#topic option').each do |o| 
    options << o.text 
  end
  puts "Topics:" 
  puts options
  subtopics = []
  within('ul.filters.list') do
    all('li a').each do |s|
      subtopics << s.text
    end
  end
  puts "Subtopics:" 
  puts subtopics
end

#reader 03
Given(/^I search the term a term like "(.*?)" on Readers Queries page$/) do |arg1|
  fill_in 'q', :with => arg1
  click_on 'Search'
  sleep 2
  within('div.question-list.reader') do
    all('a').each do |q|
      puts q.text
    end
  end
end

#reader 04
Then(/^I should see the current featured reader question$/) do
  fq = find('div.featured').text
  puts fq
end

#reader 05
Then(/^I submit a user query$/) do
  ts = Time.now.to_i.to_s
  fill_in 'reader_question_wording', :with => "This is a test question #{ts}"
  fill_in 'reader_question_email', :with => "intrideaqa@gmail.com"
  fill_in 'reader_question_name', :with => 'Intridea QA'
  fill_in 'reader_question_profession', :with => "Profession"
  fill_in 'reader_question_city', :with => "Carmel"
  fill_in 'reader_question_country', :with => "USA"
  fill_in 'reader_question_age', :with => "99"
  click_on 'Submit'
end

#reader 06
Given(/^I fill in every field except email and submit the query$/) do
  ts = Time.now.to_i.to_s
  fill_in 'reader_question_wording', :with => "Reader_06 This is a test question #{ts}"
  fill_in 'reader_question_name', :with => 'Intridea QA'
  fill_in 'reader_question_profession', :with => "Profession"
  fill_in 'reader_question_city', :with => "Carmel"
  fill_in 'reader_question_country', :with => "USA"
  fill_in 'reader_question_age', :with => "99"
  click_on 'Submit'
end

Given(/^I fill in every field except question and submit the query$/) do
  ts = Time.now.to_i.to_s
  fill_in 'reader_question_email', :with => "intrideaqa@gmail.com"
  fill_in 'reader_question_name', :with => 'Intridea QA'
  fill_in 'reader_question_profession', :with => "Profession"
  fill_in 'reader_question_city', :with => "Carmel"
  fill_in 'reader_question_country', :with => "USA"
  fill_in 'reader_question_age', :with => "99"
  click_on 'Submit'
end

#countries 01
Given(/^I should see "(.*?)" countries$/) do |arg1|
  sleep 1
  within('div#grouped_countries') do
    countries = all('#grouped_countries a')
    countries.size.should == arg1.to_i 
  end
end

And(/^I click "(.*?)" filter$/) do |arg1|
  within('ul.filters.list') do
    click_on arg1
    sleep 2
  end
end

#countries 02
Given(/^I search for countries by the term "(.*?)"$/) do |arg1|
  fill_in 'q', :with => arg1
  sleep 1
  click_on 'Search'
end

#countries 03
Then(/^I reset the country filters$/) do
  click_on 'Reset Filters'
  sleep 1
end

#countries 04
Given(/^I click any of the countries$/) do
  within('div#grouped_countries') do
    countries = all('#grouped_countries a')
    c = countries[rand(countries.size)]
    puts c.text
    c.click
    sleep 1
  end
end

Then(/^the country home page should look fine$/) do
  should have_text "Religious Demography: Affiliation"
  puts find('dl.country-stats').text
end

#countries 05
Then(/^I should see the latest news about this country$/) do
  within('div.sections-wrapper section:nth-child(3)') do
    news = all('td')
    news.each do |n|
      puts n.text
    end
  end
end

#countries 06
Then(/^I select the country "(.*?)"$/) do |arg1|
  find('input').native.send_keys arg1
  sleep 1
  find('input').native.send_keys :return
  sleep 4
end

#countries 06
Then(/^I click all the countries$/) do
  within('div#grouped_countries') do
    countries = all('#grouped_countries a')
    names = []
    urls = []
    countries.each do |c|
      names << c.text
      urls << c[:href]
    end
    (170..235).each do |i|
      visit urls[i]
      sleep 10
      screenshot_name = names[i] + ".png"
      screenshot_path = "tmp/#{screenshot_name}"
      save_screenshot(screenshot_path)
    end
  end
end