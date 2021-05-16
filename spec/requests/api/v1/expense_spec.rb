require 'rails_helper'

RSpec.describe Api::V1::ExpensesController, type: :request do
  before(:all) do
    my_token = jwt_and_refresh_token(create(:user), 'user')
    @headers = { 'Authorization' => "Bearer #{my_token[0]}"}
  end
  describe 'GET /index' do
    it 'should have status success' do
      get "/api/v1/expenses", :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Post /create' do
    it 'should have status success' do
      post "/api/v1/expenses", :params => { category: 'testvet', detail: 'testvet for testdog', amount: 15 }, :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Get /show' do
    it 'should have status success' do
      expense = create(:expense)
      get "/api/v1/expenses/#{expense.id}", :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end
end
