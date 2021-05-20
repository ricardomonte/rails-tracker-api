class Api::V1::UsersController < ApplicationController
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
      payload = { error: 'No token provide' }
      render json: :payload, status: :unprocessable_entity
    end
  end
end
