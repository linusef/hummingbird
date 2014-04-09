def register(args = {})
  [:first_name, :last_name, :email, :password, :password_confirmation].each do |a|
  	case a
  	when :first_name
  		fill_in :user_first_name, with: args[a]
  	when :last_name
  		fill_in :user_last_name, with: args[a]
  	when :email
  		fill_in :user_email, with: args[a]
  	when :password
  		fill_in :user_password, with: args[a]
  	when :password_confirmation
  		fill_in :user_password_confirmation, with: args[a]
  	end
  end
  click_button "Register"
end