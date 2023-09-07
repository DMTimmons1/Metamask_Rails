require "rails_helper"

RSpec.describe "The Home Page" do
  it 'shows the user the home page' do
    visit "/"

    expect(page).to have_content("Welcome to the Rails and Ethereum Wallet connection portal!")
    expect(page).to have_link("Sign-Up")
  end
end