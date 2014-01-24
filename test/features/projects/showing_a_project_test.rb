require "test_helper"

feature "As the site visitor, I want to show a project" do
  scenario "viewing a projects" do
    # Given a couple of projects (loaded from fixtures)

    # When I visit /projects
    visit project_path(projects(:portfolio))

    # Then I should see a list of projects
    page.text.wont_include "Barnyard Cereal"
  end
end
