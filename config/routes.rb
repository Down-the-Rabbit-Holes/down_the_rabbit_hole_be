Rails.application.routes.draw do
  resources :animals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # namespace :api do
  #   namespace :v1 do
      
  #   end
  # end

  # GET '/api/v1/animals', to: 'api/v1/animals#index'
  # get "/api/v1/animals", to: "api/v1/animals#index"
  post "/api/v1/animals", to: "api/v1/animals#create"
  # get "/api/v1/animals/start", to: "api/v1/animals#start"
  # get "/api/v1/animals/eat_me", to: "api/v1/animals#eat_me"

end
