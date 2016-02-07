Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/about' => 'about#index'
  get '/how-it-works' => 'home#how_it_works'
  get '/passport' => 'profile#new_passport'
  post '/passport' => 'profile#create_passport'
  resources :profile
  resources :ads
end
