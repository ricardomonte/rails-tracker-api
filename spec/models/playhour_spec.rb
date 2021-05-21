require 'rails_helper'

RSpec.describe Playhour, type: :model do
  describe 'it will test the associations' do
    it {  should belong_to :dog }
    it { should validate_presence_of(:hour) }
    it { should validate_presence_of(:play) }
    it {  should validate_numericality_of(:hour).is_greater_than(0) }
  end
end
