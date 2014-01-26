# require "test_helper"

# feature "As a site visitor I want to be able to sign up for an account so that I can perform actions that require me to be logged in." do
#   scenario "sign up" do
#     # GIVEN a registration form
#     visit root_path
#     click_on "Sign Up"

#     # WHEN I register with valid info
#     fill_in "Email", with: "name@example.com"
#     fill_in "Password", with: "password"
#     fill_in "Password confirmation", with: "password"
#     click_on "Sign Up"

#     # THEN I should be signed up
#     page.must_have_content "successfully"
#   end
# end
