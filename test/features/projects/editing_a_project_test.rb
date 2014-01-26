require "test_helper"

feature "As the site owner, I want to edit a project so that I can correct typos" do
  scenario "editing an existing project" do
    # GIVEN an existing project
    visit edit_project_path(projects(:portfolio))

    # WHEN I make changes
    fill_in "Name", with: "My Rad Portfolio"
    click_on "Update Project"

    # THEN the changes should be saved and shown
    page.text.must_include "successfully"
    page.text.must_include "Rad Portfolio"
    page.text.wont_include "Code Fellows Portfolio"

  end

  scenario "incorrectly editing an existing project" do
    # GIVEN an existing project
    visit edit_project_path(projects(:portfolio))

    # WHEN I submit invalid changes
    fill_in "Name", :with => "Q"
    fill_in "Technologies used", :with => ""
    click_on "Update Project"

    # THEN the changes should not be saved, and I should have to try again
    page.must_have_content "from being saved"
    page.must_have_content "Name is too short"
    page.must_have_content "Technologies used can't be blank"
  end
end
