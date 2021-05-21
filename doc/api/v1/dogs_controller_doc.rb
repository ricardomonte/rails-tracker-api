module Api::V1::DogsControllerDoc
  extend Apipie::DSL::Concern

  def_param_group :authorization do
    header "Authentication", 'Bearer Token', required: true
    error code: 401, desc: 'Unauthorized'
  end

  api :GET, '/v1/dogs', 'get dogs from authenticated user'
  param_group :authorization
  def index; end

  api :POST, '/v1/dogs', 'Create new dog'
  param_group :authorization
  param :dog, Hash do
    param :name, String, :required => true
    param :breed, String, :required => true
    param :kilograms, Integer, :required => true
  end
  def create; end

  api :GET, '/v1/dogs/:id', 'Get a detailed dog record'
  param_group :authorization
  def show; end

  api :PATCH, '/v1/dogs/:id', 'Update the regular play time of a dog'
  param_group :authorization
  param :dog, Hash do
    param :dog_id, String, :required => true
    param :regular_play_time, Integer
  end
  def update; end

  api :GET, '/v1/dogs/:id/my_hours', 'Get all the playing hours og a dog'
  param_group :authorization
  param :dog, Hash do
    param :dog_id, String, :required => true
  end
  def myhours; end
end