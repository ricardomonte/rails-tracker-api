class Api::V1::FoodsController < ApplicationController
  before_action :authenticate_and_set_user

  def index
    foods = Food.all
    render json: foods
  end

  def create
    food = Food.create!(food_params)
    render json: food, status: :created
  end

  def show
    food = Food.find(params[:id])
    render json: food
  end

  private

  def food_params
    params.permit(:name, :amount, :times_per_day, :total_kilograms, :dog_id)
  end
end
