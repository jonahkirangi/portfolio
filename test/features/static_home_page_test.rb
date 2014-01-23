require "test_helper"

class StaticHomePageTest < Capybara::Rails::TestCase
  test "sanity" do
    visit root_path
      refute_content page, "Goodbye All!"
    end
  end

