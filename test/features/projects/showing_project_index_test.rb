require "test_helper"

feature "As the site visitor, I want to view the project index page" do
  scenario "viewing project index" do
    # Given a couple of projects (loaded from fixtures)

    # When I visit /projects
    visit projects_path

    # Then I should see a list of projects
    page.text.must_include "My Portfolio"
  end
end
