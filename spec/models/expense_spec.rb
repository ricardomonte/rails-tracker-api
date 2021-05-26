require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'Test validations for expense model' do
    subject { build(:expense) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:detail) }
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:user_id) }
  end

  describe 'it will test the associations' do
    it { should belong_to :user }
  end
end
