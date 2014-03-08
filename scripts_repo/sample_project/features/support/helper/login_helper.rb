def login(username, password)
  logout_if_already_loggedin
  visit new_user_session_path
  fill_in :user_session_username, with: username
  fill_in :user_session_password, with: password
  click_on "Log In"
  #find('#login').click
end

def login_as(role)
  logout_if_already_loggedin
  case role
  when "normal_user"
    user = build_stubbed :normal_user
  when "admin"
    user = build_stubbed :admin
  end
  login user.username, user.password
end


def logout_if_already_loggedin
  # write something
end