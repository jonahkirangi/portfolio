# require "test_helper"

# feature "As the site visitor, I want to delete a project" do
#   scenario "deleting a projects" do

#     # GIVEN an existing project
#     name = projects(:portfolio).name
#     visit projects_path

#     # WHEN I delete the project
#     page.find("a[href='#{project_path(projects(:portfolio))}'][data-method='delete']").click

#     # THEN the project should be deleted
#     page.wont_have_content "Ruby, Rails, Javascript"

#   end
# end
