require "test_helper"

feature "Check For Zurb" do
  scenario "visiting the index page" do
    # GIVE a page, WHEN the user visits
    visit root_path

    # THEN must have Zurb Foundation loaded
    page.must_have_css(".columns")

    # save_and_open_page
  end
end
