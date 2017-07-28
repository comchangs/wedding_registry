Rails.application.routes.draw do

  root to: "home#index"

  resources :weddings
  resources :registries
  resources :gifts
  resources :guests
  post '/claim' => 'gifts#claim'
  
end
