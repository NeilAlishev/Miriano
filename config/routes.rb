Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/search' => 'places#index'
  get '/new' => 'places#new'
  get '/about' => 'about#index'
  get '/how-it-works' => 'home#how_it_works'
  resources :profile
end
