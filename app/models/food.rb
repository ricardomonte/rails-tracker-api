class Food < ApplicationRecord
  belongs_to :dog

  validates_presence_of  :name, :amount, :times_per_day, :total_kilograms, :dog_id
  validates :times_per_day, numericality: {greater_than: 0}
  validates :total_kilograms, numericality: {greater_than: 0}
end
