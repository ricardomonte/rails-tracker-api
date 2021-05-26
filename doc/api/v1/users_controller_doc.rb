module Api::V1::UsersControllerDoc
  extend Apipie::DSL::Concern

  def_param_group :authorization do
    header 'Authentication', 'Bearer Token', required: true
    error code: 401, desc: 'Unauthorized'
  end

  api :GET, '/v1/profile', 'Get the current user authenticated'
  param_group :authorization
  def profile; end
end
