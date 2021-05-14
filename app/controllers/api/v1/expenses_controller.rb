class Api::V1::ExpensesController < ApplicationController
  before_action :authenticate_and_set_user

  def index
    expenses = Expense.where(user_id: current_user.id).group_by { |u| (u.created_at).strftime('%A-%d-%B') }
    render json: expenses.as_json
  end

  def create
    expense = current_user.expenses.create!(expense_params)
    render json: expense.as_json, status: :created
  end

  def destroy
    expense = Expense.find(params[:id])
    expense.destroy
  end

  private

  def expense_params
    params.permit(:category, :detail, :amount)
  end
end
