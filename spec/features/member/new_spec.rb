require "rails_helper"

RSpec.describe "The member creation page" do
  it 'shows the user a form to create and account' do
    visit "/member_creation"

    expect(page).to have_content("Create your account")
    expect(page).to have_field("member[username]")
    expect(page).to have_button("Sign-up with Ethereum")
  end

  it 'allows the user to create and account' do
    visit "/member_creation"
    fill_in "member[username]", with: "DawsonTimmons"
    click_button "Sign-up with Ethereum"

    expect(Member.count).to eq(1)
    expect(Member.last.username).to eq("DawsonTimmons")
  end
end