require 'rails_helper'

RSpec.describe Dog, type: :model do
  describe "Test validations" do
    subject { build(:dog) } 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:breed) }
    it { should validate_presence_of(:owner) }
  end

  describe "it will test the associations" do
    it { should have_many :foods }
  end
end