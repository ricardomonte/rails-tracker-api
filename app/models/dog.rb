class Dog < ApplicationRecord
  has_many :playhours
  validates_presence_of :name, :breed, :owner, :kilograms
end
