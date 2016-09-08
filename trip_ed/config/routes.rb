Rails.application.routes.draw do
  match 'locations', to: "locations#index", via: [:get, :post]
  root to: 'users#signin'

#CHANGED THE ROUTES
  resources :users do
    resources :trips, only: [:update, :edit]
  end

  resources :locations do
    resources :trips
  end

  post 'users/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  post 'locations/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  put 'trips/reserve' => 'trips#reserve'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

