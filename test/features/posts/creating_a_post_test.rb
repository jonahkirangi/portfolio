require "test_helper"

feature "Creating A Post" do
  scenario "a user wants to create a new post" do

    visit new_post_path

    fill_in "Email", with: users(:User1).email
    fill_in "Password", with: "password"

    click_button "Sign in"

    fill_in "Title", with: posts(:cr).title
    fill_in "Body", with: posts(:cr).body

    # When I submit the form
    click_on "Create Post"

    # Then a new post should be created and displayed
    page.text.must_include "Post was successfully created"
    page.text.must_include posts(:cr).title

    page.has_css? "#author"
    page.text.must_include users(:User1).email
  end

end

