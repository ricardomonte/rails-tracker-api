require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Test validations for food model" do
    subject { build(:user) } 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should have_secure_password }
  end

  describe "it will test the associations" do
    it { should have_many(:dogs) }
    it { should have_many(:expenses) }
  end
end