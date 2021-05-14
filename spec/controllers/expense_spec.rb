require 'rails_helper'

RSpec.describe Api::V1::ExpensesController, type: :controller do

  before(:all) do
    @my_token = jwt_and_refresh_token(create(:user), 'user')
  end  
  describe 'GET #index' do
    it 'should have status success' do
      request.headers.merge!({'Authorization': "Bearer #{@my_token[0]}"})
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Post #create' do
    it 'should have status success' do
      request.headers.merge!({'Authorization': "Bearer #{@my_token[0]}"})
      post :create, params: {'category': 'testvet', 'detail': 'testvet for testdog', 'amount': 15}
      expect(response).to have_http_status(:success)
    end
  end
end