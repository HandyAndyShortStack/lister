require "spec_helper"

feature "Deleting Lists" do
  
  let!(:list) { Factory(:list) }

  scenario "Deleting a List" do

    visit "/"
    click_link "example list"
    click_link "Delete List"

    within(".flash") do
      page.should have_content("list was deleted")
    end
    page.should_not have_content("example list")

  end

end
