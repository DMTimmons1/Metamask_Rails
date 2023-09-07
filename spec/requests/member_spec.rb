require 'rails_helper'

RSpec.describe "Members", type: :request do
  describe "The memeber's get request" do
    it "returns a sucessful http response" do
      get "/member_creation"
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "The memeber's post request" do
    it "returns a created http response" do
      expect(Member.count).to eq(0)

      post "/member_creation", params: { member: { username: 'DawsonTimmons' } }
      expect(Member.count).to eq(1)
    end
  end
end