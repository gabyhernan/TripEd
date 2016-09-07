Rails.application.routes.draw do

  match 'locations', to: "locations#index", via: [:get, :post]
  root to: 'users#new'
  resources :trips
  resources :locations
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
