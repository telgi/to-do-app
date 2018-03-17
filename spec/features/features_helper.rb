def create_new_user
  visit '/'
  click_link "Sign Up"
  fill_in('user[username]', with: 'jesus33')
  fill_in('user[password]', with: 'haloflex')
  fill_in('user[password_confirmation]', with: 'haloflex')
  click_button "Create User"
end
