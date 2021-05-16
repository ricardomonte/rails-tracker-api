require 'rails_helper'

RSpec.describe Api::V1::FoodsController, type: :request do
  before(:all) do
    my_token = jwt_and_refresh_token(create(:user), 'user')
    @headers = { 'Authorization' => "Bearer #{my_token[0]}"}
  end
  describe 'GET #index' do
    it 'should have status success' do
      get "/api/v1/dogs/1/foods", params: { dog_id: 1 }, :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Post #create' do
    it 'should have status success' do
      dog = create(:dog)
      post "/api/v1/dogs/#{dog.id}/foods",
           params: { dog_id: dog.id, name: 'testFood', amount: '65', times_per_day: '1', total_kilograms: '15',
                     dog: dog },
           :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Get /show' do
    it 'should have status success' do
      dog = create(:dog)
      food = create(:food, dog_id: dog.id)
      puts food
      get "/api/v1/dogs/#{dog.id}/foods/#{food.id}",
          :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end
end
