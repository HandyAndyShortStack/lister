require "spec_helper"

feature "Creating Items" do
  
  let!(:list) { Factory(:list) }

  scenario "Adding an Item to a List" do

    visit "/"
    click_link "example list"
    click_link "Add New Item"
    fill_in :name, with: "example item"
    click_button "Create Item"

    within("li") do
      page.should have_content("example item")
    end

  end

end
