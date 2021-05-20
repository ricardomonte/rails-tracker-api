module Users
  class RegistrationController < ApiGuard::RegistrationController
    before_action :authenticate_resource, only: [:destroy]

    def create
      init_resource(sign_up_params)
      if resource.save
        create_token_and_set_header(resource, resource_name)
        user_success = {
          user: resource,
          message: I18n.t('api_guard.registration.signed_up')
        }
        # render_success( @decoded_token)
        render json: user_success
      else
        render_error(422, object: resource)
      end
    end

    def destroy
      current_resource.destroy
      render_success(message: I18n.t('api_guard.registration.account_deleted'))
    end

    private

    def sign_up_params
      params.permit(:name, :lastname, :email, :password)
    end
  end
end

# message: I18n.t('api_guard.registration.signed_up'