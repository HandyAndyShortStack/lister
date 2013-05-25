require "spec_helper"

feature "Editing Lists" do
  
  let!(:list) { Factory(:list) }

  scenario "Editing an Existing List" do

    visit "/"
    click_link "example list"
    click_link "Edit List"
    fill_in "Name", with: "changed list"
    click_button "Update List"

    within("h2") do
      page.should have_content("changed list")
    end
    within(".flash") do
      page.should have_content("list has been updated")
    end

  end

end
