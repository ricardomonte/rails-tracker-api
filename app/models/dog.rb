class Dog < ApplicationRecord

  validates_presence_of :name, :breed, :owner
end
