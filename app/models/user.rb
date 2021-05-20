class User < ApplicationRecord
  has_secure_password

  has_many :dogs, foreign_key: :owner, dependent: :destroy
  has_many :expenses,  dependent: :destroy
  validates_presence_of :name, :lastname, :email, :password_digest

  def as_json(options = nil)
    hash = super(:except => [:password_digest, :updated_at, :created_at, :email])
    return hash
  end
end
