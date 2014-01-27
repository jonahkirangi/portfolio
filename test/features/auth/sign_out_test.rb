require "test_helper"

feature "As a site visitor, I want to be able to sign out" do
  scenario "signing out of the site" do

    # SIGN IN an existing user
    visit user_session_path

    fill_in "Email", with: "dad@aol.com"
    fill_in "Password", with: "letmein"
    save_and_open_page
    click_on "Sign in"

    # SIGN OUT the existing user
    #click_on "Sign out"

    # VERIFY user is signed out
    #page.must_have_content "Signed out"
  end
end
