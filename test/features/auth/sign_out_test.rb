# require "test_helper"

# feature "As a site visitor, I want to be able to sign out" do
#   scenario "signing out of the site" do

#     # SIGN IN an existing user
#     visit user_session_path

#     fill_in "Email", with: "name@example.com"
#     fill_in "Password", with: "password"
#     page.find("[type='submit']").click

#     # SIGN OUT the existing user
#     visit root_path
#     click_on "Sign Out"

#     # VERIFY user is signed out
#     page.must_have_content "Signed out successfully."
#   end
# end
