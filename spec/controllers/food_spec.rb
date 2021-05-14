require 'rails_helper'

RSpec.describe Api::V1::FoodsController, type: :controller do
  before(:all) do
    @my_token = jwt_and_refresh_token(create(:user), 'user')
  end
  describe 'GET #index' do
    it 'should have status success' do
      request.headers.merge!({ Authorization: "Bearer #{@my_token[0]}" })
      get :index, params: { dog_id: 1 }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Post #create' do
    it 'should have status success' do
      request.headers.merge!({ Authorization: "Bearer #{@my_token[0]}" })
      dog = create(:dog)
      post :create,
           params: { dog_id: dog.id, name: 'testFood', amount: '65', times_per_day: '1', total_kilograms: '15',
                     dog: dog.to_s }
      expect(response).to have_http_status(:success)
    end
  end
end
