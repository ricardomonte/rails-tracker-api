class User < ApplicationRecord
  has_secure_password

  has_many :dogs, foreign_key: :owner, dependent: :destroy
  has_many :expenses, dependent: :destroy

  validates_presence_of :name, :lastname, :email, :password_digest

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, with: VALID_EMAIL_REGEX

  def as_json(_options = nil)
    super(except: %i[password_digest updated_at created_at email])
  end
end
