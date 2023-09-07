require 'rails_helper'

RSpec.describe Member, type: :model do
  context "validations" do
    it { should validate_presence_of :eth_address }
    it { should validate_presence_of :eth_nonce }
    it { should validate_presence_of :username }
    
    it { should validate_uniqueness_of :eth_address }
    it { should validate_uniqueness_of :eth_nonce }
    it { should validate_uniqueness_of :username }
  end
end