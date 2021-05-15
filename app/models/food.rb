class Food < ApplicationRecord
  belongs_to :dog

  validates_presence_of :name, :amount, :times_per_day, :total_kilograms, :dog_id
  validates_numericality_of :amount, :times_per_day, :total_kilograms, greater_than: 0

  def as_json(options = nil)
    hash = super(:include => {:dog => {:except => [:updated_at, :breed, :created_at]}})
    hash[:buy_new_food] = EndFood.new(self.amount, self.total_kilograms, self.created_at, self.times_per_day).calculate
    return hash
  end
end
