require "test_helper"

feature "CanAccessHome" do
  scenario "index is displayed" do
    visit root_path
    page.must_have_content "Welcome aboard"
  end
end
