require 'rails_helper'

RSpec.describe Api::V1::DogsController, type: :controller do
  it { should route(:get, 'api/v1/dogs').to(action: :index) }
  it { should route(:post, 'api/v1/dogs').to(action: :create) }
end