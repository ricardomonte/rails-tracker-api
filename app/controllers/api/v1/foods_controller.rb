class Api::V1::FoodsController < ApplicationController
  before_action :authenticate_and_set_user

  def index
    foods = Food.all
    render json: foods.as_json
  end

  def create
    food = Food.create!(food_params)
    something = EndFood.new(food.amount, food.total_kilograms, food.created_at, food.times_per_day).calculate
    render json: { somethin: something, food: food }, status: :created
  end

  private

  def food_params
    params.permit(:name, :amount, :times_per_day, :total_kilograms, :dog_id)
  end
end
