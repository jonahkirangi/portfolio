# require "test_helper"

# feature "As a user, I want to edit an existing post" do
#   scenario "editing an existing post" do

#     # Given an existing post
#     post = Post.create(title: "Becoming a Code Fellow", body: "Means striving for excellence.")
#     visit post_path

#     # When I click edit and submit changed data
#     click_on "Edit"
#     fill_in "Title", with: "Becoming a Web Developer"
#     click_on "Update Post"

#     # Then the post is updated
#     page.text.must_include "Post was successfully updated"
#     page.text.must_include "Web Developer"

#   end
# end
