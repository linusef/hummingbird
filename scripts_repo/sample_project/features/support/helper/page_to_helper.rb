def page_to(page_name)
  case page_name
  when "sign_in"
    visit new_user_session_path
  when "dashboard"
    visit "/"
  when "other pages"
  end
end