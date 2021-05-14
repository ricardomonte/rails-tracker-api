require 'rails_helper'

RSpec.describe Api::V1::FoodsController, type: :controller do
  it { should route(:get, 'api/v1/dogs/1/foods').to(action: :index, dog_id: 1) }
  it { should route(:post, 'api/v1/dogs/1/foods').to(action: :create, dog_id: 1) }
end