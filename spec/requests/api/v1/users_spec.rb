require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :request do
  before(:all) do
    @my_token = jwt_and_refresh_token(create(:user), 'user')
  end
  describe 'GET /show' do
    it 'should have status success' do
      headers = { 'Authorization' => "Bearer #{@my_token[0]}"}
      get "/api/v1/users/1", :params => { user_id: 1}, :headers => headers
      expect(response).to have_http_status(:success)
    end
  end
end

