require 'rails_helper'

RSpec.describe Food, type: :model do
  describe "Test validations for food model" do
    subject { build(:food) } 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:times_per_day) }
    it { should validate_presence_of(:total_kilograms) }
    it { should validate_presence_of(:dog_id) }
    it { should validate_numericality_of(:amount).is_greater_than(0) }
    it { should validate_numericality_of(:total_kilograms).is_greater_than(0) }
    it { should validate_numericality_of(:times_per_day).is_greater_than(0) }
  end

  describe "it will test the associations" do
    it { should belong_to :dog }
  end
end