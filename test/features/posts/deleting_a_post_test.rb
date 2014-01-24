require "test_helper"

feature "Deleting a Post" do
  scenario "delete post button is clicked" do
    # Given an existing post
    visit posts_path

    #post author clicks on delete link
    page.find("tbody tr:last").click_on "Destroy"

    #post is deleted and doesn't show up
    page.wont_have_content "Blah"
  end
end
