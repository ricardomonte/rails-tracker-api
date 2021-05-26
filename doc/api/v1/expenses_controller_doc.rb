module Api::V1::ExpensesControllerDoc
  extend Apipie::DSL::Concern

  def_param_group :authorization do
    header 'Authentication', 'Bearer Token', required: true
    error code: 401, desc: 'Unauthorized'
  end

  api :GET, '/v1/expenses', 'Get expenses from authenticated user'
  param_group :authorization
  def index; end

  api :POST, '/v1/expenses', 'Create a new expense'
  param_group :authorization
  param :expense, Hash do
    param :category, String, required: true
    param :detail, String, required: true
    param :amount, Integer, required: true
    param :date_payment, Date, required: true
  end
  def create; end

  api :GET, '/v1/expenses/:id', 'Get a detailed expense record'
  param_group :authorization
  def show; end
end
