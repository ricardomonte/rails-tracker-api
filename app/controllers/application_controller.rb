class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def render_unprocessable_entity_response(exception)
    error = {
      title: 'Validation Failed',
      error: ValidationErrorsSerializer.new(exception.record).serialize,
      status: Rack::Utils::SYMBOL_TO_STATUS_CODE[:unprocessable_entity]
    }
    render json: { errors: [error] }, status: :unprocessable_entity
  end

  def render_not_found_response
    render json: { error: exception.message }, status: :not_found
  end
end
