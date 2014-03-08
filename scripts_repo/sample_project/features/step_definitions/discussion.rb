Then(/^show "(.*?)"$/) do |topic|
  case topic 
  when "difference between RSpec and Cucumber"
    visit "https://www.evernote.com/shard/s73/sh/15d40838-2ba9-4cf7-8c52-c7cd89d37430/c5d28da064967870cc11d4dca4e7a029"
  when "what does DHH say about RSpec and Cucumber"
    visit "http://www.rubyinside.com/dhh-offended-by-rspec-debate-4610.html"
  end
  sleep 10000
end