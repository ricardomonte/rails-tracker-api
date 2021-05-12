class User < ApplicationRecord
  has_secure_password

  validates_presence_of :name, :lastname, :email, :password_digest
end
