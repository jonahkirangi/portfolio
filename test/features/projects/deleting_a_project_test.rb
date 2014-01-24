require "test_helper"

feature "As the site visitor, I want to delete a project" do
  scenario "deleting a projects" do
    # Given a couple of projects (loaded from fixtures)

    # When I visit /projects
    visit project_path

    # Then I should see a list of projects
    page.must_have_content projects(:portfolio).technologies_used
  end
end
