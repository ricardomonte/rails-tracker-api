require 'rails_helper'

RSpec.describe Api::V1::PlayhoursController, type: :request do
  before(:all) do
    my_token = jwt_and_refresh_token(create(:user), 'user')
    @headers = { 'Authorization' => "Bearer #{my_token[0]}"}
  end

  describe 'Post #create' do
    it 'should have status success' do
      dog = create(:dog)
      post "/api/v1/playhours",
           :params => {:playhour =>{ dog_id: dog.id, hour: 3, play: '2021-5-19', dog: dog } },
           :headers => @headers
      expect(response).to have_http_status(:success)
    end
  end
end
