Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "offers#index"

  resources :offers, only: %i[index show new create edit update destroy] do
    resources :bookings, only: %i[new create]
  end
  # resources :dashboards, only: %i[] do
  #   collection do
  #     get :my_bookings
  #   end
  # end
  get 'dashboards/my_bookings', to: 'dashboards#my_bookings'
  resources :bookings, only: %i[update]
end
