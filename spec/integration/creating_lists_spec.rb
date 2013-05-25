require 'spec_helper'

feature "Creating Lists" do

  scenario "Creating a New List" do
    visit "/"
    click_link "New List"
    fill_in "Name", with: "example"
    click_button "Create List"

    page.should have_content("Your list was created!")

  end

end