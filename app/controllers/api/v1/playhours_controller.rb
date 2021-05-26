class Api::V1::PlayhoursController < ApplicationController
  include Api::V1::PlayhoursControllerDoc
  before_action :authenticate_and_set_user

  def create
    Playhour.create!(hour_params)
    render json: { message: 'play hour created' }.as_json, status: :created
  end

  private

  def hour_params
    params.require(:playhour).permit(:hour, :play, :dog_id)
  end
end
