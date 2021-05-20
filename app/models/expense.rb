class Expense < ApplicationRecord
  belongs_to :user

  validates_presence_of :category, :detail, :amount, :user_id, :date_payment

  def as_json(options = nil)
    hash = super()
    hash[:day_of_expense] = expense_day
    hash[:month_of_expense] = expense_month
    hash[:year_of_expense] = expense_year
    return hash
  end

  private

  def expense_day
    day = self.date_payment.strftime('%-d')
    return day
  end
  def expense_month
    day = self.date_payment.strftime('%-m')
    return day
  end
  def expense_year
    day = self.date_payment.strftime('%Y')
    return day
  end

end
