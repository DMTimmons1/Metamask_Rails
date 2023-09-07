require "rails_helper"

RSpec.describe "The Home Page" do
  it 'shows the user the home page' do
    visit "/"

    expect(page).to have_content("Test")
  end
end