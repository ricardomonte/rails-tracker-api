class Api::V1::UsersController < ApplicationController
  include Api::V1::UsersControllerDoc
  before_action :authenticate_and_set_user

  def show
    user = User.find(params[:id])
    render json: user
  end

  def profile
    if current_user
      data_user = {
        user: current_user,
        message: "token valid for user #{current_user.id}"
      }
      render json: data_user.as_json
    else
      render json: { error: 'No token provide' }, status: :unprocessable_entity
    end
  end
end
