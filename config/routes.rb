Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  api_guard_routes for: 'users', controller: {
    registration: 'users/registration',
  }

  namespace :api do
    namespace :v1 do
      resources :dogs, only: [:create, :show]
    end
  end
end
