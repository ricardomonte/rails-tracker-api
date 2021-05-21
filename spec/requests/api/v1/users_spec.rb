require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :request do
  Apipie.record('examples')
  before(:all) do
    @my_token = jwt_and_refresh_token(create(:user), 'user')
  end
  describe 'GET #profile' do
    it 'should have status success' do
      headers = { 'Authorization' => "Bearer #{@my_token[0]}"}
      get "/api/v1/profile", :headers => headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #profile' do
    it 'should have status unauthorized' do
      headers = { 'Authorization' => "Bearer 1544552"}
      get "/api/v1/profile", :headers => headers
      expect(response).to have_http_status(:unauthorized)
    end
  end
end

