class Dog < ApplicationRecord
  has_many :foods
  validates_presence_of :name, :breed, :owner
end
