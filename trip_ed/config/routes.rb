Rails.application.routes.draw do
  match 'locations', to: "locations#index", via: [:get, :post]
  root to: 'users#signin'

  resources :trips
  resources :locations
  resources :users

  post 'users/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  post 'locations/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
