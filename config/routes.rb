Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  api_guard_routes for: 'users', controller: {
    registration: 'users/registration',
    authentication: 'users/authentication'
  }

  namespace :api do
    namespace :v1 do
      resources :dogs do
        get '/my_hours', to: "dogs#myhours"
      end
      resources :users
      resources :expenses, only: [:index, :create, :show]
      resources :playhours, only: [:create]
      get '/profile', to: "users#profile"
    end
  end
end
