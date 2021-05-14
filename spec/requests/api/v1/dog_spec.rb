require 'rails_helper'

RSpec.describe Api::V1::DogsController, type: :request do
  before(:all) do
    my_token = jwt_and_refresh_token(create(:user), 'user')
    @headers = { 'Authorization' => "Bearer #{my_token[0]}"}
  end
  describe 'GET #index' do
    it 'should have status success' do
      get "/api/v1/dogs", :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Post #create' do
    it 'should have status success' do
      post "/api/v1/dogs", :params => { :dog => { name: 'tester', breed: 'german shepard', owner: '1' } }, :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end
end
