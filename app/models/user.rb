class User < ApplicationRecord
  has_secure_password

  has_many :dogs, foreign_key: :owner
  has_many :expenses
  validates_presence_of :name, :lastname, :email, :password_digest
end
