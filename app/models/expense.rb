class Expense < ApplicationRecord
  belongs_to :user

  validates_presence_of :category, :detail, :amount, :user_id

  def as_json(options = nil)
    hash = super()
    hash[:day_of_expense] = expense_day
    hash[:month_of_expense] = expense_month
    hash[:year_of_expense] = expense_year
    return hash
  end

  private

  def expense_day
    day = self.created_at.strftime('%-d')
    return day
  end
  def expense_month
    day = self.created_at.strftime('%-m')
    return day
  end
  def expense_year
    day = self.created_at.strftime('%Y')
    return day
  end

end
