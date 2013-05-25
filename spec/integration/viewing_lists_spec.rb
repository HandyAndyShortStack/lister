require 'spec_helper'

feature 'Viewing Lists' do

  let!(:list) { Factory(:list) }

  scenario 'Viewing a List' do
    
    visit "/"
    click_link "example list"

    within("h2") do
      page.should have_content("example list")
    end

  end
  
end
