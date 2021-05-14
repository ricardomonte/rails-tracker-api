class Expense < ApplicationRecord
  belongs_to :user

  validates_presence_of :category, :detail, :amount, :user_id
end
