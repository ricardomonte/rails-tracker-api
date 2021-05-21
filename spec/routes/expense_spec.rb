require 'rails_helper'

RSpec.describe Api::V1::ExpensesController, type: :controller do
  it { should route(:get, 'api/v1/expenses').to(action: :index) }
  it { should route(:post, 'api/v1/expenses').to(action: :create) }
end
