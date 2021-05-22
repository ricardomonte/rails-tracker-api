class Expense < ApplicationRecord
  belongs_to :user

  validates_presence_of :category, :detail, :amount, :user_id, :date_payment

  def as_json(_options = nil)
    hash = super()
    hash[:day_of_expense] = expense_day
    hash[:month_of_expense] = expense_month
    hash[:year_of_expense] = expense_year
    hash
  end

  private

  def expense_day
    date_payment.strftime('%-d')
  end

  def expense_month
    date_payment.strftime('%-m')
  end

  def expense_year
    date_payment.strftime('%Y')
  end
end
