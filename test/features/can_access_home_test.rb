require "test_helper"

feature "As a user, I want to access the home page" do
  scenario "index is displayed" do
    visit root_path
    page.must_have_content "Welcome aboard"
  end
end
