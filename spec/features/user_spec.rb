require 'rails_helper'
require_relative 'features_helper'

RSpec.feature "User" do
  scenario "User can sign up to create a profile" do
    create_new_user
    expect(page).to have_content("User was successfully created.")
  end

  scenario "Existing user can successfully login to profile" do
    create_new_user
    click_link "Log In"
    fill_in('username', with: 'jesus33')
    fill_in('password', with: 'haloflex')
    click_button "Log In"
    expect(page).to have_content("Login Successful")
  end
end
