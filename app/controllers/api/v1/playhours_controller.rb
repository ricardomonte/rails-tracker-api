class Api::V1::PlayhoursController < ApplicationController
  before_action :authenticate_and_set_user

  def create
    play_h = Playhour.create!(hour_params)
    render json: {message: "play hour created"}.as_json, status: :created
  end

  private

  def hour_params
    params.require(:playhour).permit(:hour, :play, :dog_id)
  end
end
