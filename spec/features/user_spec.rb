require 'rails_helper'

RSpec.feature "User" do
  scenario "User can sign up to create a profile" do
    visit '/'
    click_link "Sign Up"
    fill_in('user[username]', with: 'jesus33')
    fill_in('user[password]', with: 'haloflex')
    fill_in('user[password_confirmation]', with: 'haloflex')
    click_button "Create User"
    expect(page).to have_content("User was successfully created.")
  end
end
