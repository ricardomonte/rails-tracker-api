require 'rails_helper'

RSpec.describe Api::V1::DogsController, type: :request do
  Apipie.record('examples')

  before(:all) do
    @user = create(:user)
    my_token = jwt_and_refresh_token(@user, 'user')
    @headers = { 'Authorization' => "Bearer #{my_token[0]}"}
  end
  describe 'GET #index' do
    it 'should have status success' do
      dog = create(:dog, owner: @user.id)
      get "/api/v1/dogs", :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it 'should have status success' do
      post "/api/v1/dogs", :params => { :dog => { name: 'tester', breed: 'german shepard', kilograms: 5, regular_play_time: 2, owner: @user.id } }, :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'should have status success' do
      dog = create(:dog)   
      get "/api/v1/dogs/#{dog.id}", :params =>  { :dog => { dog_id: dog.id }}, :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PATCH #update' do
    it 'should have status success' do
      dog = create(:dog)   
      patch "/api/v1/dogs/#{dog.id}", :params => {:dog => { dog_id: dog.id, regular_play_time: 14}}, :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #myhours' do
    it 'should have status success' do
      dog = create(:dog)   
      hours = create(:playhour, dog_id: dog.id)
      get "/api/v1/dogs/#{dog.id}/my_hours", :params => {:dog => { dog_id: dog.id }}, :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end
end
