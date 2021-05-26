class Playhour < ApplicationRecord
  belongs_to :dog

  validates_presence_of :hour, :play
  validates_numericality_of :hour, greater_than: 0
end
