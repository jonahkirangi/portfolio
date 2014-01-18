require "test_helper"

feature "CanAccessHome" do
  scenario "index is displayed" do
    #visit home_path
    visit "/"
    page.must_have_content "Welcome aboard"
    page.wont_have_content "Goobye All!"
  end
end
