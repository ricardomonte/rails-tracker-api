class Api::V1::ExpensesController < ApplicationController
  before_action :authenticate_and_set_user

  def index
    expenses = Expense.where(user_id: current_user.id).order(date_payment: :asc)
    render json: expenses
  end

  def create
    expense = current_user.expenses.create!(expense_params)
    render json: expense, status: :created
  end

  def show
    expense = Expense.find(params[:id])
    render json: expense
  end

  def destroy
    expense = Expense.find(params[:id])
    expense.destroy
  end

  private

  def expense_params
    params.permit(:category, :detail, :amount, :date_payment)
  end
end
