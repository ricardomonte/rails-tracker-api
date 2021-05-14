class Api::V1::DogsController < ApplicationController
  before_action :authenticate_and_set_user

  def index
    dogs = Dog.where(owner: current_user.id)
    render json: dogs.as_json
  end

  def create
    @dog = @current_user.dogs.create!(dog_params)
    render json: @dog.as_json
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed)
  end
end
