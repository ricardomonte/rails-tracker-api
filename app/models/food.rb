class Food < ApplicationRecord
  belongs_to :dog

  validates_presence_of  :name, :amount, :times_per_day, :total_kilograms, :dog_id
  validates_numericality_of :amount, :times_per_day, :total_kilograms, greater_than: 0
end
