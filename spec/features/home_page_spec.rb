require 'rails_helper'

RSpec.feature "Visiting the HomePage", type: :feature do
  context "user should be rerouted when navbar link is clicked" do
    before (:each) do
      visit root_path
    end
    scenario "the visitor should be routed to homepage when 'Home' link is clicked" do
      click_button "Home"
      expect(page).to have_link("Sign In")
    end
  end
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end