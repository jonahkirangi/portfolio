require "test_helper"

feature "As a site visitor, I want to be able to sign out" do
  scenario "signing out of the site" do

    # SIGN IN an existing user
    visit new_user_session_path
    page.text.must_include "Remember me"

    fill_in "Email", with: users(:User1).email
    fill_in "Password", with: "password"
    click_button "Sign in"

    page.text.must_include "Signed in successfully."

    # SIGN OUT the existing user
    click_on "Sign Out"

    # VERIFY user is signed out
    page.must_have_content "Signed out"

  end
end
