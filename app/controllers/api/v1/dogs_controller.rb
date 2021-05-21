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

  def show
    dog = Dog.find(params[:id])
    render json: dog
  end

  def update
    dog = Dog.find(params[:id])
    dog.update(dog_params_update)
    render json: dog
  end

  def destroy
    dog = Dog.find(params[:id])
    dog.destroy
  end

  def myhours
    hour = Playhour.where(dog_id: params[:dog_id])
    render json: hour
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :kilograms)
  end

  def dog_params_update
    params.require(:dog).permit(:regular_play_time, :id)
  end
  
end
