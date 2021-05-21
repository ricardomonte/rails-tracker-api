module Api::V1::PlayhoursControllerDoc
  extend Apipie::DSL::Concern

  def_param_group :authorization do
    header "Authentication", 'Bearer Token', required: true
    error code: 401, desc: 'Unauthorized'
  end

  api :POST, '/v1/playhours', 'Create a new play hour, return a success message'
  param_group :authorization
  param :playhour, Hash do
    param :hour, Integer, :required => true
    param :play, Date, :required => true
    param :dog_id, Integer, :required => true
  end
  def create; end

end